import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/utils/show_otp_dialog.dart';
import 'package:delivero/utils/show_snack_bar.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../models/user_model.dart' as model;

class FirebaseAuthMethods {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // get user details
  Future<model.User> getUserDetails() async {
    User currentUser = _auth.currentUser!;

    DocumentSnapshot documentSnapshot =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return model.User.fromSnap(documentSnapshot);
  }

// STATE PERSISTANCE
  Stream<User?> get authState => FirebaseAuth.instance.authStateChanges();
// can also use
// FirebaseAuth.instance.userChanges();
// FirebaseAuth.instance.idTokenChanges();

// EMAIL SIGN UP
  Future<String> sighUpwithEmail({
    required String email,
    required String password,
    // required String firstName,
    // required String lastName,
    // required String userRole,
    // required String phoneNumber,
    // required String restaurantId,
    // required String profileUrl,
    // required String verifiedPhoneNumber,
    // required String verifiedEmail,
    // required num coins,
    required BuildContext context,
  }) async {
    String res = "Some error Occurred";
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        // registering user in auth with email and password
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
          email: email,
          password: password,
        );

        // Store user info in Firestore
        model.User _user = model.User(
          uid: cred.user!.uid,
          email: email,
          // userRole: userRole,
          // firstName: firstName,
          // lastName: lastName,
          // phoneNumber: phoneNumber,
          // restaurantId: restaurantId,
          // profileUrl: profileUrl,
          // verifiedPhoneNumber: verifiedPhoneNumber,
          // verifiedEmail: verifiedEmail,
          // coins: coins,
        );
        await FirebaseFirestore.instance
            .collection('users')
            .doc(cred.user!.uid)
            .set(
              _user.toJson(),
            );

        await sendEmailVerification(context);
        res = "success";
      } else {
        res = "Please enter all the fields";
      }
    } on FirebaseAuthException catch (e) {
      showSnakBar(context, e.message!);
    }
    return res;
  }

  // Email Login
  Future<void> LoginWithEmail({
    required String email,
    required String password,
    required BuildContext context,
  }) async {
    try {
      await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      if (!_auth.currentUser!.emailVerified) {
        await sendEmailVerification(context);
      } else {
        Navigator.pushNamed(context, '/bottom_nav');
      }
    } on FirebaseAuthException catch (e) {
      showSnakBar(context, e.message!);
    }
  }

  // Email Verification
  Future<void> sendEmailVerification(BuildContext context) async {
    try {
      _auth.currentUser!.sendEmailVerification();
      showSnakBar(context, 'Email varification sent!');
    } on FirebaseAuthException catch (e) {
      showSnakBar(context, e.message!);
    }
  }

// PHONE SIGNIN
  Future<void> phoneSiginIn(
    BuildContext context,
    String phoneNumber,
  ) async {
    TextEditingController codeController = TextEditingController();

    if (kIsWeb) {
      ConfirmationResult result =
          await _auth.signInWithPhoneNumber(phoneNumber);
    } else {
      // FOR ANDROID/IOS
      await _auth.verifyPhoneNumber(
        phoneNumber: '+977${phoneNumber}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (e) {
          showSnakBar(context, e.message!);
        },
        codeSent: ((String verificationId, int? resendToken) async {
          showOTPDialog(
            codeController: codeController,
            context: context,
            onPressed: () async {
              PhoneAuthCredential credential = PhoneAuthProvider.credential(
                verificationId: verificationId,
                smsCode: codeController.text.trim(),
              );

              await _auth.signInWithCredential(credential);
              Navigator.of(context).pop();
              Navigator.pushNamed(context, '/bottom_nav');
            },
          );
        }),
        codeAutoRetrievalTimeout: (String verificationId) {
          // Auto-resolution timeout
        },
      );
    }
  }

  // SIGN OUT
  Future<void> signOut(BuildContext context) async {
    try {
      await _auth.signOut();
      Navigator.pushNamed(context, '/login');
    } on FirebaseAuthException catch (e) {
      showSnakBar(context, e.message!);
    }
  }
}

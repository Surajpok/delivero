// import 'package:cloud_firestore/cloud_firestore.dart';
// import '../utils/dummy_url.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/utils/dummy_url.dart';

class User {
  final String uid;
  final String email;
  String? userRole;
  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? restaurantId;
  String? profileUrl;
  String? verifiedPhoneNumber;
  String? verifiedEmail;
  num? coins;

  User({
    required this.uid,
    required this.email,
    this.userRole,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.restaurantId,
    this.profileUrl,
    this.verifiedPhoneNumber,
    this.verifiedEmail,
    this.coins,
  });
  Map<String, dynamic> toJson() => {
        "uid": uid,
        "email": email,
        "userRole": userRole,
        "firstName": firstName,
        "lastName": lastName,
        "phoneNumber": phoneNumber,
        "restaurantId": restaurantId,
        "photoUrl": profileUrl,
        "verifiedPhoneNumber": verifiedPhoneNumber,
        "verifiedEmail": verifiedEmail,
        "coins": coins,
      };

  // Add the document ID to the post model when serialising.
  static User fromSnap(DocumentSnapshot snap) {
    var snapshot = snap.data() as Map<String, dynamic>;

    return User(
      email: snapshot['email'],
      uid: snapshot['uid'],
      userRole: snapshot['userRole'],
      firstName: snapshot['firstName'],
      lastName: snapshot['lastName'],
      phoneNumber: snapshot['phoneNumber'],
      restaurantId: snapshot['restaurantId'],
      profileUrl: snapshot['profileUrl'] != null
          ? snapshot['profileUrl']
          : DummyUrl.PERSON,
      verifiedPhoneNumber: snapshot['verifiedPhoneNumber'],
      verifiedEmail: snapshot['verifiedEmail'],
      coins: snapshot['coins'] != null ? snapshot['coins'] : 0,
    );
  }
}

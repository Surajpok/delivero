import 'package:delivero/imports.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import '../models/user_model.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  final FirebaseAuthMethods _authMethods = FirebaseAuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}

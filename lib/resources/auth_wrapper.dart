import 'package:delivero/imports.dart';
import 'package:delivero/view/splash/splash_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

class AuthWrapper extends StatelessWidget {
  const AuthWrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User?>();
    if (firebaseUser != null) {
      return const BottomNav();
    } else {
      return const SplashScreen();
    }
  }
}

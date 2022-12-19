import 'package:delivero/imports.dart';
import 'package:delivero/view/Forgot/forgot_password.dart';
import 'package:delivero/view/SignUp/signup.dart';
import 'package:delivero/view/cart/cart.dart';
import 'package:delivero/view/login/login.dart';
import 'package:delivero/view/payment/payment_details.dart';
import 'package:delivero/view/payment/payment_success.dart';
import 'package:delivero/view/product_detail/food_details.dart';
import 'package:delivero/view/splash/splash_page.dart';

import 'package:delivero/view/home_screen/home_page.dart';
import 'package:delivero/view/intro_screen/intro.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      case '/home':
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case '/intro':
        return MaterialPageRoute(
          builder: (context) => const Intro(),
        );
      case '/bottom_nav':
        return MaterialPageRoute(
          builder: (context) => const BottomNav(),
        );
      case '/details':
        return MaterialPageRoute(
          builder: (context) => const FoodDetails(),
        );
      case '/forgot':
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );
      case '/payment_details':
        return MaterialPageRoute(
          builder: (context) => const PaymentDetails(),
        );
      case '/payment_success':
        return MaterialPageRoute(
          builder: (context) => const PaymentSuccess(),
        );
      case '/cart':
        return MaterialPageRoute(
          builder: (context) => const Cart(),
        );
    }
    return null;
  }
}

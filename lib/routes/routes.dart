import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:delivero/components/deliver/deliver_page.dart';
import 'package:delivero/imports.dart';
import 'package:delivero/view/Forgot/forgot_password.dart';
import 'package:delivero/view/SignUp/signup.dart';
import 'package:delivero/view/cart/cart.dart';
import 'package:delivero/view/login/login.dart';
import 'package:delivero/view/login/phonesignin.dart';
import 'package:delivero/view/otp/otp.dart';
import 'package:delivero/view/payment/payment_details.dart';
import 'package:delivero/view/payment/payment_success.dart';
import 'package:delivero/view/food_detail/food_details.dart';
import 'package:delivero/view/restaurant_detail/restaurant_details.dart';
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
          builder: (context) => FoodDetails(
              documentSnapshot:
                  settings.arguments as DocumentSnapshot<Map<String, dynamic>>),
        );
      case '/restaurant-details':
        return MaterialPageRoute(
          builder: (context) => RestaurantDetails(
              documentSnapshot:
                  settings.arguments as DocumentSnapshot<Map<String, dynamic>>),
        );
      case '/forgot':
        return MaterialPageRoute(
          builder: (context) => const ForgotPassword(),
        );
      case '/login':
        return MaterialPageRoute(
          builder: (context) => LoginPage(),
        );
      case '/phone_signin':
        return MaterialPageRoute(
          builder: (context) => PhoneSignInPage(),
        );
      case '/signup':
        return MaterialPageRoute(
          builder: (context) => SignUp(),
        );
      case '/otp':
        return MaterialPageRoute(
          builder: (context) => OtpScreen(),
        );
      case '/deliver':
        return MaterialPageRoute(
          builder: (context) => const DeliverPage(),
        );
      case '/payment_details':
        return MaterialPageRoute(
          builder: (context) => PaymentDetails(),
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

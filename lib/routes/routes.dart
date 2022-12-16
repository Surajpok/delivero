import 'package:delivero/imports.dart';
import 'package:delivero/view/product_detail/food_details.dart';
import 'package:delivero/view/splash_screen/splash_page.dart';

import 'package:flutter/material.dart';
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
          builder: (context) => HomeScreen(),
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
    }
    return null;
  }
}

import 'package:delivero/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:delivero/constants/index.dart';

class SplashScreen extends StatelessWidget {
  static const routeName = '/';

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Lottie.asset(
            Assets.lottie.lotte,
            height: IconSizes.avatar,
          ),
        ),
      ),
    );
  }
}

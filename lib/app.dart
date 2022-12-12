import 'package:delivero/view/splash_screen/splash_page.dart';
import 'package:delivero/theme/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: appTheme(),
      home: const SplashScreen(),
    );
  }
}

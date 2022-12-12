import 'package:delivero/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:delivero/theme/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      theme: appTheme(),
      onGenerateRoute: Routes.onGenerateRoute,
      initialRoute: '/',
    );
  }
}

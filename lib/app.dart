import 'package:delivero/providers/user_provider.dart';
import 'package:delivero/routes/routes.dart';
import 'package:delivero/resources/auth_wrapper.dart';
import 'package:delivero/resources/firebase_auth_methods.dart';
import 'package:flutter/material.dart';
import 'package:delivero/theme/theme.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<FirebaseAuthMethods>(
          create: (_) => FirebaseAuthMethods(),
        ),
        StreamProvider(
          create: (context) => context.read<FirebaseAuthMethods>().authState,
          initialData: null,
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (_) => UserProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Food App',
        theme: appTheme(),
        onGenerateRoute: Routes.onGenerateRoute,
        home: AuthWrapper(),
      ),
    );
  }
}

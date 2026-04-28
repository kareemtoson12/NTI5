import 'package:flutter/material.dart';
import 'package:nti5/features/auth/login/login_screen.dart';
import 'package:nti5/features/auth/signup/signup_screen.dart';
import 'package:nti5/features/home/home_screen.dart';
import 'package:nti5/features/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/home': (context) => HomeScreen(),
      },
    );
  }
}

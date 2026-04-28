import 'package:flutter/material.dart';
import 'package:nti5/features/auth/signup/signup_screen.dart';
import 'package:nti5/features/onboarding/onboarding_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignupScreen(),
      routes: {
        '/onboarding': (context) => OnboardingScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) =>
            Scaffold(body: Center(child: Text('Login Screen'))),
        '/home': (context) =>
            Scaffold(body: Center(child: Text('Home Screen'))),
      },
    );
  }
}

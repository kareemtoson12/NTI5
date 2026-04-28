import 'package:flutter/material.dart';
import 'package:nti5/features/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/signup': (context) =>
            Scaffold(body: Center(child: Text('Sign Up Screen'))),
        '/login': (context) =>
            Scaffold(body: Center(child: Text('Login Screen'))),
        '/home': (context) =>
            Scaffold(body: Center(child: Text('Home Screen'))),
      },
    );
  }
}

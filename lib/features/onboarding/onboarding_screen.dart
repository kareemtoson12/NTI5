// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 18:04:52

import 'package:flutter/material.dart';
import 'package:nti5/core/styles/colors_manager.dart';
import 'package:nti5/core/styles/styles_manager.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //hight
    final double height = MediaQuery.of(context).size.height;
    //width
    final double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset('assets/onboarding.png'),
          Center(child: SizedBox(height: height * 0.07)),
          Text(
            'Help your path to health \n goals with happiness',
            style: StylesManager.white30Bold,
          ),

          SizedBox(height: height * 0.08),
          SizedBox(
            width: width * 0.8,
            height: height * 0.06,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/signup');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              child: const Text(
                'Start',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

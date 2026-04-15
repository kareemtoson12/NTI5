import 'package:flutter/material.dart';
import 'package:nti5/features/input/input_screen.dart';

void main() {
  runApp(BmiCalc());
}

class BmiCalc extends StatelessWidget {
  const BmiCalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: InputScreen());
  }
}

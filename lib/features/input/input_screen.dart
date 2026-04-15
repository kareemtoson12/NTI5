// Karim Toson || kareemtoson1@gmail.com || Wed Apr 15 2026 17:13:05

import 'package:flutter/material.dart';
import 'package:nti5/core/colors_manager.dart';
import 'package:nti5/core/styles_manager.dart';
import 'package:nti5/features/input/widgtes/gender_card.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String genderName = '';
  double hieghtValue = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      appBar: AppBar(
        title: Text('BMI Calculator', style: StylesManager.whiteStyle),
        elevation: 10,
        centerTitle: true,
        backgroundColor: ColorsManager.primaryColor,
        shadowColor: Colors.black,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                GenderCard(
                  genderName: 'male',
                  icon: Icons.male,
                  isSelected: genderName == 'male' ? true : false,

                  onTap: () {
                    setState(() {
                      genderName = 'male';
                    });
                  },
                ),

                GenderCard(
                  genderName: 'female',
                  icon: Icons.female,
                  isSelected: genderName == 'female' ? true : false,
                  onTap: () {
                    setState(() {
                      genderName = 'female';
                    });
                  },
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.5),
                ),
                child: Column(
                  children: [
                    Text('hieght', style: StylesManager.whiteStyle),
                    Text(
                      hieghtValue.toInt().toString(),
                      style: StylesManager.whiteStyle,
                    ),
                    Slider(
                      activeColor: ColorsManager.secondaryColor,
                      min: 100,
                      max: 200,
                      value: hieghtValue,
                      onChanged: (value) {
                        setState(() {
                          hieghtValue = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
         
          ],
        ),
      ),
    );
  }
}

// Karim Toson || kareemtoson1@gmail.com || Wed Apr 15 2026 19:37:44

import 'package:flutter/material.dart';
import 'package:nti5/core/styles_manager.dart';

class AgeAndWeight extends StatelessWidget {
  int age;
  int weight;
  bool isAge;

  AgeAndWeight({
    super.key,
    required this.age,
    required this.weight,
    required this.isAge,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey.withOpacity(0.5),
        ),
        child: Column(
          children: [
            Text(isAge ? 'age' : 'weight', style: StylesManager.whiteStyle),
            Text(
              isAge ? age.toString() : weight.toString(),
              style: StylesManager.whiteStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (isAge) {
                      age++;
                    } else {
                      weight++;
                    }
                  },
                  child: Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: () {
                    if (isAge) {
                      age--;
                    } else {
                      weight--;
                    }
                  },
                  child: Icon(Icons.remove),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Karim Toson || kareemtoson1@gmail.com || Wed Apr 15 2026 17:48:24

import 'package:flutter/material.dart';
import 'package:nti5/core/colors_manager.dart';
import 'package:nti5/core/styles_manager.dart';

class GenderCard extends StatelessWidget {
  final String genderName;
  final IconData icon;
  final bool isSelected;
  final Function() onTap;

  const GenderCard({
    super.key,
    required this.genderName,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: isSelected
                ? ColorsManager.secondaryColor
                : Colors.grey.withOpacity(0.5),
          ),

          child: Column(
            children: [
              Icon(icon, color: Colors.white, size: 80),
              Text(genderName, style: StylesManager.whiteStyle),
            ],
          ),
        ),
      ),
    );
  }
}

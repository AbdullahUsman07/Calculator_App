import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';

class Button extends StatelessWidget {
  final String text;
  final Color color;
  Button({
    super.key,
    required this.text,
    this.color = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 3,
      color: AppColors.secondary2Color,
      borderRadius: BorderRadius.circular(50),
      child: CircleAvatar(
        radius: 36,
        backgroundColor: AppColors.secondary2Color,
        child: Text(text,
            style: TextStyle(color:color,fontSize: 30, fontWeight: FontWeight.bold)),
      ),
    );
  }
}


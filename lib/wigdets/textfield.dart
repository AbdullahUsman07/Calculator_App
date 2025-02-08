import 'package:Calculator/colors.dart';
import 'package:flutter/material.dart';

class Outputfeild extends StatelessWidget {
  const Outputfeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
      child: TextField(
        decoration: InputDecoration(
          border:InputBorder.none,
          fillColor: AppColors.primaryColor,
          filled: true,
        ),
        style: const TextStyle(fontSize: 50),
        readOnly: true,
        autofocus: true,
        showCursor: true,
      ),
    );
  }
}
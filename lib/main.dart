import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';


import 'screens/homepage.dart';

void main() {
  runApp(Calculator());
}

class Calculator extends StatelessWidget {
  const Calculator({super.key});

  @override
  Widget build(BuildContext context) {
    final decoration = BoxDecoration(
      color: AppColors.secondary2Color,
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Homepage(decoration: decoration),
    );
  }
}


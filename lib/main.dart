import 'package:Calculator/provider/calulator_provider.dart';
import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';
import 'package:provider/provider.dart';


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
    return ChangeNotifierProvider(
      create: (context)=> CalculatorProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: Homepage(decoration: decoration),
      ),
    );
  }
}


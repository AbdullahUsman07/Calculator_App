import 'package:Calculator/provider/calulator_provider.dart';
import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';
import 'package:provider/provider.dart';


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
      shape: const CircleBorder(), 
      elevation: 5, 
      shadowColor: Colors.black54, 
      color: Colors.transparent, 
      child: InkWell(
        borderRadius: BorderRadius.circular(50), 
        splashColor: Colors.white, 
        highlightColor: Colors.white, 
        onTap: () {
          Provider.of<CalculatorProvider>(context, listen: false).setvalue(text);
        },
        child: Container(
          width: 72,
          height: 72,
          decoration:const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.secondary2Color, 
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
                spreadRadius: 2, 
                offset:  Offset(2, 4), 
              ),
            ],
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(color: color, fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}


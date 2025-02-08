

import 'package:flutter/material.dart';
import 'package:function_tree/function_tree.dart';

class CalculatorProvider extends ChangeNotifier{

  final calcontroller =TextEditingController();

  @override
  void dispose() {
    super.dispose();
    calcontroller.dispose();
  }

  setvalue(String value){

    String str= calcontroller.text;

    switch(value){
      case "C":
       calcontroller.clear();
       break;

      case "AC":
       calcontroller.text= str.substring(0,str.length-1);
       break;

      case "*":
        calcontroller.text += "*";
        break;

      case "=":
        calculate();
        break;

      default:
        calcontroller.text +=value;  
    }

    calcontroller.selection =TextSelection.fromPosition(
      TextPosition(offset: calcontroller.text.length)
    );
  }
   
  calculate(){
    String text= calcontroller.text;
    calcontroller.text = text.interpret().toString();
  } 
  
}

import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';

class EqualToButton extends StatelessWidget {
  const EqualToButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(  
      height:160,
      width: 70,
      decoration: BoxDecoration(
        color:AppColors.secondaryColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child:const Center(child:Text("=",style:TextStyle(fontSize: 30,)))
    );
  }
}


import 'package:Calculator/provider/calulator_provider.dart';
import 'package:flutter/material.dart';
import 'package:Calculator/colors.dart';
import 'package:provider/provider.dart';

class EqualToButton extends StatelessWidget {
  const EqualToButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Provider.of<CalculatorProvider>(context,listen: false).setvalue("=");
      },
      child: Container(  
        height:160,
        width: 70,
        decoration: BoxDecoration(
          color:AppColors.secondaryColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child:const Center(child:Text("=",style:TextStyle(fontSize: 30,)))
      ),
    );
  }
}

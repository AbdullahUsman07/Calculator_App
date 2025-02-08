import 'package:Calculator/colors.dart';
import 'package:Calculator/wigdets/textfield.dart';
import 'package:flutter/material.dart';

import '../wigdets/buttons.dart';
import '../wigdets/equalTobutton.dart';

class Homepage extends StatelessWidget {
  const Homepage({
    super.key,
    required this.decoration,
  });

  final BoxDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
        centerTitle: true,
        backgroundColor: AppColors.secondary2Color,
      ),
      body: Column(
        children: [
          Outputfeild(),
          const Spacer(),
          Container(
            height: MediaQuery.sizeOf(context).height * 0.6,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
            decoration: decoration,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonlist[index]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonlist[index+4]),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(4, (index) => buttonlist[index+8]),
                ),
                Row(children: [
                  Expanded(
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(3, (index)=> buttonlist[index+12]),
                      ),
                      const SizedBox(height: 20,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: List.generate(3, (index)=> buttonlist[index+15]),
                      ),
                    ],
                    ),
                  ),
                  const SizedBox(width: 20,),
                  EqualToButton(),
                ],)
              ],
            ),
          ),
        ],
      ),
    );
  }
}


List<Widget> buttonlist = [
  Button(
    text: 'C',
    color: AppColors.secondaryColor
    ),
  Button(
    text: '/', 
    color: AppColors.secondaryColor
    ),
  Button(
    text: '*', 
    color: AppColors.secondaryColor
    ),
  Button(
    text: 'AC',
    color: AppColors.secondaryColor,
  ),
  Button(text: '7'),
  Button(text: '8'),
  Button(text: '9'),
  Button(
    text: '-',
    color: AppColors.secondaryColor
    ),
  Button(text: '4'),
  Button(text: '5'),
  Button(text: '6'),
  Button(
    text: '+',
    color: AppColors.secondaryColor
    ),
  Button(text: '1'),
  Button(text: '2'),
  Button(text: '3'),
  Button(
    text: '=',
    color: AppColors.secondaryColor,
  ),
  Button(text: '%'),
  Button(text: '0'),
  Button(text: '.'),
  Button(
    text: '=',
    color: AppColors.secondaryColor,
  ),
];

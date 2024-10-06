import 'package:flutter/material.dart';
import 'dart:math';

class DiceAction extends StatefulWidget {
  const DiceAction({super.key});

  @override
  State<DiceAction> createState() => _DiceActionState();
}

class _DiceActionState extends State<DiceAction> {
  int dice1 = 1;
  int dice2 = 2;

  void changeDiceNumber() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset(
                'images/dice_$dice1.png',
                width: 170,
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                changeDiceNumber();
              },
              child: Image.asset(
                'images/dice_$dice2.png',
                width: 170,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

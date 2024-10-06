import 'package:flutter/material.dart';
import 'dice.dart';

void main() => runApp(DiceApp());

class DiceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 150, 160, 62),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 99, 33, 175),
          title: const Text(
            'Dice App',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
        ),
        body: const DiceAction(),
      ),
    );
  }
}

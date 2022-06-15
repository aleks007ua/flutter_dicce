import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: const DiceePage(),
      ),
    ),
  );
}
class DiceePage extends StatefulWidget {
  const DiceePage({Key? key}) : super(key: key);
  @override
  State<DiceePage> createState() => _DiceePageState();
}
class _DiceePageState extends State<DiceePage> {
  var leftDiceNumber = 1;
  var rightDiceNumber = 1;
  RandomDicee() {
    leftDiceNumber = Random().nextInt(6) + 1;
    rightDiceNumber = Random().nextInt(6) + 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  RandomDicee();
                });
              },
              child: Image.asset('images/dicee_$leftDiceNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  RandomDicee();
                });
              },
              child: Image.asset('images/dicee_$rightDiceNumber.png'),
            ),
          ),
        ], //children
      ),
    );
  }
}

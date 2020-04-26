import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftValue = 1;
  int rightValue = 2;

  void changeDice() {
    setState(() {
      leftValue = Random().nextInt(6) + 1;
      rightValue = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //leftValue = leftDiceNumber.nextInt(5) + 1;
    //rightValue = rightDiceNumber.nextInt(5) + 1;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Left Pressed');
                changeDice();
              },
              child: Image.asset('images/dice$leftValue.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Right Pressed');
                changeDice();
              },
              child: Image.asset('images/dice$rightValue.png'),
            ),
          ),
        ],
      ),
    );
  }
}

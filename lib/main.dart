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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$leftValue.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: null,
                  child: Image.asset('images/dice$rightValue.png'),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.play_circle_outline),
                tooltip: 'Click to Roll the Dice',
                iconSize: 48.0,
                color: Colors.white,
                onPressed: () {
                  changeDice();
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}

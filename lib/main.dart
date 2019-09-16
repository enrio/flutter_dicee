import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(children: <Widget>[
        Expanded(
          child: FlatButton(
            child: Image.asset("images/dice$leftDiceNumber.png"),
            onPressed: () {
              setState(() {
                leftDiceNumber = Random().nextInt(5) + 1;
                print("Pressed left button [$leftDiceNumber]");
              });
            },
//            onPressed: onLeftTap,
          ),
        ),
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                rightDiceNumber = Random().nextInt(5) + 1;
                print("Pressed right button [$rightDiceNumber]");
              });
            },
            child: Image.asset("images/dice$rightDiceNumber.png"),
          ),
        ),
      ]),
    );
  }
}

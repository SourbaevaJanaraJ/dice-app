import 'dart:math';

import 'package:flutter/material.dart';

class DicePage extends StatefulWidget {
  
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNo = 5;
  int rightDiceNo = 1;

  void changeDiceFace() {
    setState(() {
      rightDiceNo = Random().nextInt(6) + 1;
      leftDiceNo = Random().nextInt(6) + 1;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: FlatButton(
                onPressed:(){
                  changeDiceFace();
                 
                },
                child: Image.asset('images/dice$leftDiceNo.png')),
          ),


          Expanded(
            child: FlatButton(
                onPressed:(){
                  changeDiceFace();
                  
                },
                child: Image.asset('images/dice$rightDiceNo.png')),
          ),

        ],
      ),
    );
  }
}
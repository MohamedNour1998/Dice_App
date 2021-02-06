import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Dice extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new StateDice();
  }
}

class StateDice extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Dice_App'),
      ),
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        leftDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$leftDice.png'))),
            Expanded(
                flex: 1,
                child: FlatButton(
                    onPressed: () {
                      setState(() {
                        rightDice = Random().nextInt(6) + 1;
                      });
                    },
                    child: Image.asset('images/dice$rightDice.png'))),
          ],
        ),
      ),
    );
  }
}

import 'dart:math';
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
        body: MyDicePage(),
      ),
    ),
  );
}

/*class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Image.asset('images/dice1.png'),
          Image.asset('images/dice1.png'),
        ],
      ),
    );
  }
}
*/
class MyDicePage extends StatefulWidget {
  const MyDicePage({Key? key}) : super(key: key);

  @override
  State<MyDicePage> createState() => _MyDicePageState();
}

class _MyDicePageState extends State<MyDicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollDicee() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDicee();
              },
              child: Image.asset('images/dice$leftDiceNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

/* 
TextButton(
  onPressed: () {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  },
  Widget: Image(
    image: AssetImage('images/$diceNumber.png'),
  ),
),
*/

import "package:flutter/material.dart";
import "dart:math";

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Dice Game"),
        backgroundColor: Colors.red,
        centerTitle: true,
      ),
      body: Dice(),
    ),
  ));
}
class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int leftDice = 1;
  int rightDice = 1;
  void changeDice(){
    setState(() {
      leftDice = Random().nextInt(6) + 1;
      rightDice = Random().nextInt(6) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child:TextButton(
              onPressed: (){
                setState(() {
                  changeDice();
                });
               },
              child: Image.asset("images/dice$leftDice.png"),
            ),

          ),
          Expanded(
            child:TextButton(
              onPressed:(){
                changeDice();
              },
              child:  Image.asset("images/dice$rightDice.png"),
            ),
          ),
        ],
      ),
    );
  }
}


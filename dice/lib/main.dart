import "package:flutter/material.dart";

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

class Dice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftDice = 5;
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child:TextButton(
                onPressed: (){
                  print("Left button is pressed");
                },
                child: Image.asset("images/dice$leftDice.png"),
              ),

          ),
          Expanded(
            child:TextButton(
              onPressed:(){
                print("Right button is pressed");
              },
              child:  Image.asset("images/dice1.png"),
            ),
          ),
        ],
      ),
    );
  }
}

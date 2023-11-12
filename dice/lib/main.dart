import "package:flutter/material.dart";

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice Game"),
          backgroundColor: Colors.red,
          centerTitle: true,
        ),
        body: Dice(),
      ),
    )
  );
}
class Dice extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container();
  }
}
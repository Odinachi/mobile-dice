import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Diccey Appy"),
          backgroundColor: Colors.red,
        ),
        body: DicePage()
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  int leftImageNumber = 1;
  int rightImageNumber= 1;

  int setImageNum(){
    setState(() {
      leftImageNumber = Random().nextInt(6)+1;
      rightImageNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setImageNum();
               },
              child: Image.asset('images/dice$leftImageNumber.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setImageNum();
              },
              child: Image.asset('images/dice$rightImageNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

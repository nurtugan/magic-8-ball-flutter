import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: AskMeAnything(),
        backgroundColor: Colors.blue.shade500,
      ),
    ),
  );
}

class AskMeAnything extends StatefulWidget {
  @override
  _AskMeAnythingState createState() => _AskMeAnythingState();
}

class _AskMeAnythingState extends State<AskMeAnything> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          setState(
            () {
              index = Random().nextInt(5) + 1;
            },
          );
        },
        child: Image.asset('images/ball$index.png'),
      ),
    );
  }
}

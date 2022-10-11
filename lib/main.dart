import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue.shade900,
          title: Text('Ask Me Anything!'),
        ),
        body: MagicQuiz(),
      ),
    )
  );
}

class MagicQuiz extends StatefulWidget {
  @override
  State<MagicQuiz> createState() => _MagicQuizState();
}

class _MagicQuizState extends State<MagicQuiz> {

  int magicBall = 2;
  
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Image.asset('images/ball$magicBall.png'),),
        ],
      ),
    );
  }
}

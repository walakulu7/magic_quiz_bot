import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text('Ask Me Anything!'),
      ),
      body: MagicQuiz(),
    ),
  ));
}

class MagicQuiz extends StatefulWidget {
  const MagicQuiz({Key? key}) : super(key: key);

  @override
  State<MagicQuiz> createState() => _MagicQuizState();
}

class _MagicQuizState extends State<MagicQuiz> {
  int ballNumber = 3;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                    print('I got clicked on ball$ballNumber.png');
                  },
                );
              },
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}

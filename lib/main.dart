import 'dart:ffi';

import 'package:flutter/material.dart';

void main() => runApp(const Quizzler());

class Quizzler extends StatelessWidget {
  const Quizzler({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: const SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {

  List <Icon> scoreKeeper = [];

  List <String> questions = [
    'You can lead a cow down stairs but not up stairs.',
    'Approximately one quarter of human bones are in the feet.',
    'A slug\'s blood is green.',
    'The Big Apple is a nickname given to Washington D.C in 1971.',
    'Peanuts are not nuts!',
    'Electrons move faster than the speed of light.',
    'Light travels in a straight line.',
    'The Great Wall of China is visible from space.',
    'The Atlantic Ocean is the warmest in the world.',
    'There are more ancient pyramids in Sudan than in Egypt.',
  ];

  List <bool> answers = [
    false,
    true,
    true,
    true,
    true,
    false,
    true,
    false,
    false,
    false,
  ];

  int questionNumber = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber],
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              textColor: Colors.white,
              color: Colors.green,
              child: const Text(
                'True',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              onPressed: () {
                bool correctAnswer = answers[questionNumber];
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: FlatButton(
              color: Colors.red,
              child: const Text(
                'False',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  questionNumber++;
                });
              },
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
'You can lead a cow down stairs but not up stairs.', false,
'Approximately one quarter of human bones are in the feet.', true,
'A slug\'s blood is green.', true,
'The Big Apple is a nickname given to Washington D.C in 1971.', true
'Peanuts are not nuts!', true
'Electrons move faster than the speed of light.', false
'Light travels in a straight line.', true
'The Great Wall of China is visible from space.', false
'The Atlantic Ocean is the warmest in the world.', false
'There are more ancient pyramids in Sudan than in Egypt.', false
*/

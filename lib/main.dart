import 'package:flutter/material.dart';
import 'package:quizzler/question.dart';

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

  List<Question> questionBank = [
    Question(questionText: 'You can lead a cow down stairs but not up stairs.', questionAnswer: false),
    Question(questionText: 'Approximately one quarter of human bones are in the feet.', questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(questionText: 'The Big Apple is a nickname given to Washington D.C in 1971.', questionAnswer: true),
    Question(questionText: 'Peanuts are not nuts!', questionAnswer: true),
    Question(questionText: 'Electrons move faster than the speed of light.', questionAnswer: false),
    Question(questionText: 'Light travels in a straight line.', questionAnswer: true),
    Question(questionText: 'The Atlantic Ocean is the warmest in the world.', questionAnswer: false),
    Question(questionText: 'The Great Wall of China is visible from space.', questionAnswer: false),
    Question(questionText: 'There are more ancient pyramids in Sudan than in Egypt.', questionAnswer: false),
    Question(questionText: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".', questionAnswer: true),
    Question(questionText: 'It is illegal to pee in the Ocean in Portugal.', questionAnswer: true),
    Question(questionText: 'No piece of square dry paper can be folded in half more than 7 times.', questionAnswer: false),
    Question(questionText: 'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.', questionAnswer: true),
    Question(questionText: 'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.', questionAnswer: false),
    Question(questionText: 'The total surface area of two human lungs is approximately 70 square metres.', questionAnswer: true),
    Question(questionText: 'Google was originally called "Backrub".', questionAnswer: true),
    Question(questionText: 'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.', questionAnswer: true),
    Question(questionText: 'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.', questionAnswer: true),
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
                questionBank[questionNumber].questionText,
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
                bool correctAnswer = questionBank[questionNumber].questionAnswer;
                if (correctAnswer == true) { print('Correct'); }
                else { print('InCorrect'); }
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
                bool correctAnswer = questionBank[questionNumber].questionAnswer;
                if (correctAnswer == false) { print('Correct'); }
                else { print('InCorrect'); }
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


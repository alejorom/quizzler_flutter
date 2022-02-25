import 'dart:math';
import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _questionCounter = 0;
  final int _questionMaximus = 16;
  int _questionCorrect = 0;
  int _questionWrong = 0;

  final List<Question> _questionBank = [
    // 20 English questions
    Question(
        questionText: 'You can lead a cow down stairs but not up stairs.',
        questionAnswer: false),
    Question(
        questionText:
            'Approximately one quarter of human bones are in the feet.',
        questionAnswer: true),
    Question(questionText: 'A slug\'s blood is green.', questionAnswer: true),
    Question(
        questionText:
            'The Big Apple is a nickname given to Washington D.C in 1971.',
        questionAnswer: true),
    Question(questionText: 'Peanuts are not nuts!', questionAnswer: true),
    Question(
        questionText: 'Electrons move faster than the speed of light.',
        questionAnswer: false),
    Question(
        questionText: 'Light travels in a straight line.',
        questionAnswer: true),
    Question(
        questionText: 'The Atlantic Ocean is the warmest in the world.',
        questionAnswer: false),
    Question(
        questionText: 'The Great Wall of China is visible from space.',
        questionAnswer: false),
    Question(
        questionText: 'There are more ancient pyramids in Sudan than in Egypt.',
        questionAnswer: false),
    Question(
        questionText: 'Buzz Aldrin\'s mother\'s maiden name was "Moon".',
        questionAnswer: true),
    Question(
        questionText: 'It is illegal to pee in the Ocean in Portugal.',
        questionAnswer: true),
    Question(
        questionText:
            'No piece of square dry paper can be folded in half more than 7 times.',
        questionAnswer: false),
    Question(
        questionText:
            'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        questionAnswer: true),
    Question(
        questionText:
            'Emus can’t fly.',
        questionAnswer: true),
    Question(
        questionText:
            'The total surface area of two human lungs is approximately 70 square metres.',
        questionAnswer: true),
    Question(
        questionText: 'Google was originally called "Backrub".',
        questionAnswer: true),
    Question(
        questionText:
            'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        questionAnswer: true),
    Question(
        questionText:
            'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        questionAnswer: true),
    Question(
        questionText: 'The Mona Liza was stolen from the Louvre in 1911.',
        questionAnswer: true),

    // 20 Spanish questions
    Question(
        questionText: 'Escocia tiene a la flor del cardo por símbolo.',
        questionAnswer: true),
    Question(
        questionText:
            'En el parchís tradicional se utilizan 20 fichas como máximo.',
        questionAnswer: false),
    Question(
        questionText: 'Francia es el segundo país más grande de Europa.',
        questionAnswer: true),
    Question(
        questionText:
            'Albert Einstein dijo que la cuarta guerra mundial se lucharía con piedras.',
        questionAnswer: true),
    Question(
        questionText: 'Miguel de Cervantes estuvo cautivo en Argelia.',
        questionAnswer: true),
    Question(
        questionText: 'El aguacate es una hortaliza.', questionAnswer: false),
    Question(
        questionText:
            'La edad de los metales se divide en Edad de Hierro, Edad de Oro y Edad de Bronce.',
        questionAnswer: false),
    Question(
        questionText:
            'Las plantas elaboran su propio alimento a través de la fotosíntesis.',
        questionAnswer: true),
    Question(
        questionText:
            'Marie Curie falleció de leucemia a causa de su contacto con sustancias radioactivas.',
        questionAnswer: true),
    Question(
        questionText: 'Las cajas negras de los aviones son negras.',
        questionAnswer: false),
    Question(
        questionText:
            'Las islas Canarias deben su nombre a las aves llamadas canarios',
        questionAnswer: false),
    Question(
        questionText: 'Un kilo de plomo pesa más que un kilo de plumas.',
        questionAnswer: false),
    Question(
        questionText: 'La famosa \'Guerra de los 100 años\' duró 116 años.',
        questionAnswer: true),
    Question(
        questionText:
            'Los jardines colgantes de Babilonia se consideran entre las Siete Maravillas del Mundo Antiguo.',
        questionAnswer: true),
    Question(
        questionText: '¿Es cierto que en Júpiter llueven diamantes?',
        questionAnswer: true),
    Question(
        questionText:
            'Si te tragas un chicle, ¿tu cuerpo tardará siete años en digerirlo?',
        questionAnswer: false),
    Question(
        questionText: 'En la cara oculta de la luna es siempre de noche.',
        questionAnswer: false),
    Question(questionText: 'Los peces nunca tienen sed', questionAnswer: false),
    Question(
        questionText: 'Hay moscas en la Antártida.', questionAnswer: false),
    Question(
        questionText:
            "Los búhos pueden girar la cabeza completamente, es decir 360 grados.",
        questionAnswer: false),
  ];

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  int getQuestionBankLength() {
    return _questionBank.length;
  }

  void nextQuestion() {
    if (_questionCounter < _questionMaximus - 1) {
      _questionCounter++;
      _questionNumber = Random().nextInt(_questionBank.length);
    }
  }

  bool isFinished() {
    if (_questionCounter >= _questionMaximus - 1) {
      return true;
    } else {
      return false;
    }
  }

  void setQuestionCorrect()
  {
    _questionCorrect++;
  }

  void setQuestionWrong(){
    _questionWrong++;
  }

  int getQuestionCorrect()
  {
    return _questionCorrect;
  }

  int getQuestionWrong(){
    return _questionWrong;
  }

  int getQuestionCounter(){
    return _questionCounter + 1;
  }

  void reset() {
    _questionCounter = 0;
    _questionCorrect = 0;
    _questionWrong = 0;
    _questionNumber = Random().nextInt(_questionBank.length);
  }
}

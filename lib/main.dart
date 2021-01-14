import 'package:first_app/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState

    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  static const _questions = [
    {
      'questionText': 'What\'s your favourite colour?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 4},
        {'text': 'White', 'score': 1},
      ], //MAPS KEY-VALUE PAIRS
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 7},
        {'text': 'Cheetah', 'score': 3},
        {'text': 'Tiger', 'score': 1},
        {'text': 'Elephant', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favourite destination?',
      'answers': [
        {'text': 'India', 'score': 5},
        {'text': 'UK', 'score': 3},
        {'text': 'USA', 'score': 7},
        {'text': 'Switzwerland', 'score': 1}
      ],
    },
  ];
  var _questionIndex = 0;
  // ignore: non_constant_identifier_names
  var _TotalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _TotalScore = 0;
    });
  }

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _TotalScore = _TotalScore + score;
    });

    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('WE HAVE MORE QUESTION!');
    } else {
      print("NO MORE QUETIONS");
    }
  }

  @override
  // ignore: non_constant_identifier_names
  Widget build(BuildContext Context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pink,
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_TotalScore, _resetQuiz),
      ),
    );
  }
}

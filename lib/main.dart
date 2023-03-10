import 'package:flutter/material.dart';

import './question.dart';

import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  var questions;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });

    if (_questionIndex < questions.length) {
      print('We have more questions!');
    }

    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    final questions = const [
      {
        'questionText': 'Whats\'s your favourite color?',
        'answers': ['Black', 'Red', 'Green', 'White'],
      },
      {
        'questionText': 'Whats\'s your favourite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Whats\'s your favourite food?',
        'answers': ['Burger', 'Pizza', 'Roasted Chicken', 'Paneer'],
      }
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Column(
        children: [
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            return Answer(_answerQuestion, answer);
          }).toList(),
        ],
      ),
    ));
  }
}

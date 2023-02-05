import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });

    print(questionIndex);
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favourite animal?',
      'What\'s your favourite food?',
      'What\'s your favourite plant?'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(title: Text('My First App')),
      body: Column(children: [
        Question('The question!'),
        ElevatedButton(
          child: Text(questions[questionIndex]),
          onPressed: answerQuestion,
        ),
        ElevatedButton(
          child: Text(questions.elementAt(1)),
          onPressed: null,
        ),
        ElevatedButton(
          child: Text(questions.elementAt(2)),
          onPressed: null,
        ),
        ElevatedButton(
          child: Text(questions.elementAt(3)),
          onPressed: null,
        ),
      ]),
    ));
  }
}

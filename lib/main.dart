import 'package:flutter/material.dart';
import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final _questions = const [
    {
      'questionText': 'What is your favourite color?',
      'answers': ['Red', 'Blue', 'Black']
    },
    {
      'questionText': 'What is your favourite car?',
      'answers': ['Toyota', 'Honda', 'Suzuki']
    },
    {
      'questionText': 'What is your favourite animal?',
      'answers': ['Tiger', 'Sparrow', 'Parrot', 'Lion']
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aham'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(),
      ),
    );
  }
}

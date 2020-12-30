import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      if(_questionIndex == 0){
        _questionIndex++;          
      }
    });
    print('Answer chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color?',
      'What is your favourite car?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aham'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Red'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Blue'),
              onPressed: _answerQuestion,
            ),
            RaisedButton(
              child: Text('Black'),
              onPressed: () {
                print('Answer3 chosen..');
              },
            ),
          ],
        ),
      ),
    );
  }
}

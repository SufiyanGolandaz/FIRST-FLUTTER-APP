import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = [
    {
      'text': 'What is your fav color?',
      'answer': ['Red', 'Yellow', 'Green', 'Orange']
    },
    {
      'text': 'What is your fav animal?',
      'answer': ['Cow', 'Goat', 'Cat', 'Dog']
    },
    {
      'text': 'What is your fav activity?',
      'answer': ['Running', 'Cycling', 'Jogging', 'Swimming']
    }
  ];
  var _questionindex = 0;
  void _answerquestion() {
    setState(() {
      _questionindex += 1;
    });
  }

  void _resetquiz() {
    setState(() {
      _questionindex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("QUIZ APP"),
          centerTitle: true,
          backgroundColor: Colors.blue[300],
        ),
        body: _questionindex < _questions.length
            ? Quiz(
                answerquestion: _answerquestion,
                questionindex: _questionindex,
                questions: _questions,
              )
            : Result("Well Done!", _resetquiz),
      ),
    );
  }
}

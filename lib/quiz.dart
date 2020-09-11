import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final Function answerquestion;
  final List<Map<String, Object>> questions;
  int questionindex;
  Quiz({this.answerquestion, this.questions, this.questionindex});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Question(questions[questionindex]['text']),
          ...(questions[questionindex]['answer'] as List<String>).map((answer) {
            return Answer(answer, answerquestion);
          }).toList()
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerv;
  final Function selecthandler;
  Answer(this.answerv, this.selecthandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.cyan[300],
        child: Text(
          answerv,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: selecthandler,
      ),
    );
  }
}

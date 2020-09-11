import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String disptext;
  final Function resetquiz;
  Result(this.disptext, this.resetquiz);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(140, 80, 40, 50),
      child: Column(
        children: [
          Text(
            disptext,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.pink, fontSize: 30),
          ),
          RaisedButton(
            color: Colors.cyan,
            onPressed: resetquiz,
            child: Text(
              "Restart Quiz",
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  String question;
  //constructor
  Question(String newQuestion) {
    this.question = newQuestion;
  }

  @override
  Widget build(BuildContext context) {
    return (Container(
        width: double.infinity,
        margin: EdgeInsets.all(12),
        child: Text(
          question,
          style: TextStyle(fontSize: 22),
          textAlign: TextAlign.center,
        )));
  }
}

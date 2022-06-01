import 'package:flutter/material.dart';

import './answer.dart';
import './questions.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function _answerText;

  Quiz(this.questions, this.questionIndex, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Questions(questions[questionIndex]['questionText'] as String),
        ...(questions[questionIndex]['answer'] as List<Map<String, Object>>)
            .map((answer) {
          return Answers(
              ()=> _answerText(answer['score']), answer['text'] as String);
        }).toList()
      ], /**/
    );
  }
}

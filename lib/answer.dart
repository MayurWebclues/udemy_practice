import 'package:flutter/material.dart';

class Answers extends StatefulWidget {
  final Function answerHandler;
   String answers;

  Answers(this.answerHandler, this.answers);

  @override
  State<Answers> createState() => _AnswersState();
}

class _AnswersState extends State<Answers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16),
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            widget.answerHandler();
          },
          child: Text(widget.answers)),

    );
  }
}

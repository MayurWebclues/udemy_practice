import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

   Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: double.infinity,
      child: Text(
        questionText,
        style: const TextStyle(
          fontSize: 28,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}

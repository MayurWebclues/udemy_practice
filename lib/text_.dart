import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final String textValueChange;
   Texts(this.textValueChange);

  @override
  Widget build(BuildContext context) {
    return Text(
          textValueChange,
          style: TextStyle(fontSize: 30),
        );

  }
}

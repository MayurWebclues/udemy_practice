import 'package:flutter/material.dart';
import './text_.dart';
import './text_control.dart';
class AssignmentPageOne extends StatefulWidget {
  const AssignmentPageOne({Key? key}) : super(key: key);

  @override
  State<AssignmentPageOne> createState() => _AssignmentPageOneState();
}

class _AssignmentPageOneState extends State<AssignmentPageOne> {
  var textValueChange="Blank Text" ;
  void _changeText(){
    setState((){
      textValueChange="Hello text changes";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Padding(
            padding: const EdgeInsets.all(10),
             child: Texts(textValueChange)
            ),
        TextController(_changeText)
      ],
    );
  }
}

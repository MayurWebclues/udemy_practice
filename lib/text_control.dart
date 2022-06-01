import 'package:flutter/material.dart';
class TextController extends StatefulWidget {
  final VoidCallback changeText;
   TextController(this.changeText);


  @override
  State<TextController> createState() => _TextControllerState();
}

class _TextControllerState extends State<TextController> {

  @override
  Widget build(BuildContext context) {
    return  ElevatedButton(
        onPressed: () {
          widget.changeText();
        } ,
      child: const Text("click on button"),
    );
  }
}


import 'package:flutter/material.dart';

import './answer.dart';
import './questions.dart';

void main() {
  runApp(const MyHomePage(
    title: 'My App',
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var _questionIndex = 0;
  var questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': ['Black', 'Red', 'Green', 'Yellow']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': ['Cow', 'Dog', 'Lion', 'Bear']
    },
    {
      'questionText': 'What\'s your favorite Food?',
      'answer': ['Chakra', 'Para', 'Chinese', 'Manchu']
    },
  ];

  void _answerText() {
    if (_questionIndex <questions.length - 1) {
      return;
    }
    setState(() {
      _questionIndex += 1;
    });
    print('answer pressed $_questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _questionIndex < questions.length
          ? Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Questions(
                      questions[_questionIndex]['questionText'] as String),
                  ...(questions[_questionIndex]['answer'] as List<String>)
                      .map((answer) {
                    return Answers(_answerText, answer);
                  }).toList()
                ], /**/
              ),
            )
          : Center(
              child: Text('you did it'),
            ),
    ));
  }
}

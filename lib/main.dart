import 'package:flutter/material.dart';
import 'package:udemy_practice/assignment_page_one.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(const MaterialApp(
      home: MyHomePage(title: "ddd"),
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
  var _totalScore = 0;
  var questions = [
    {
      'questionText': 'What\'s your favorite color?',
      'answer': [
        {'text': 'Black', 'score': 1},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answer': [
        {'text': 'Cow', 'score': 0},
        {'text': 'DOG', 'score': 4},
        {'text': 'Lion', 'score': 1},
        {'text': 'Bear', 'score': 2}
      ]
    },
    {
      'questionText': 'What\'s your favorite Food?',
      'answer': [
        {'text': 'Chakra', 'score': 10},
        {'text': 'patra', 'score': 5},
        {'text': 'khandvi', 'score': 4},
        {'text': 'Shukla', 'score': 1}
      ]
    },
  ];

  void _answerText(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex += 1;
    });
    print('answer pressed $_questionIndex');
  }

  void resetQuiz(){
    setState(() {
     _questionIndex = 0;
     _totalScore = 0;
    });


  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: _questionIndex < questions.length
          ?  Quiz(questions, _questionIndex, _answerText)
          :Results(_totalScore, resetQuiz),
    floatingActionButton: FloatingActionButton(
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AssignmentPageOne()),
              );
            },
        ),)
    );
  }
}

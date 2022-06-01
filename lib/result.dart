import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int results;
  final Function resetQuiz;

  Results(this.results, this.resetQuiz);

  String get getResults {
    var result = "you did it ";
    if (results <= 8) {
      result = "average";
    } else if (results <= 12) {
      result = "average";
    } else if (results <= 16) {
      result = "below average";
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(getResults,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,decorationStyle:TextDecorationStyle.wavy)),
        ),
        ElevatedButton(
          onPressed: () {
            resetQuiz();
          },
          child: Text('Reset Quiz $results',style: TextStyle(fontSize: 30,fontWeight: FontWeight.w300,decorationStyle:TextDecorationStyle.dashed),),
          style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.black,
              onSurface: Colors.green),
        ),
        TextButton(onPressed: () {}, child: const Text("TextButton")),
        OutlinedButton(
          onPressed: () {},
          child: Text("TextButton"),
          style: OutlinedButton.styleFrom(primary: Colors.green , side: const BorderSide(style: BorderStyle.solid, width: 1.5,color:Colors.orange)),
        )
      ],
    );
  }
}

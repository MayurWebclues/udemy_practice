import 'package:flutter/material.dart';


abstract class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);
  void add();

  void minus(){

  }
  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}



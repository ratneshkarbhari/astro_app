import 'package:flutter/material.dart';
import '../templates/AppBarTemplate.dart';
import '../templates/DrawerTemplate.dart';

class AskAnyQuestion extends StatefulWidget {
  @override
  _AskAnyQuestionState createState() => _AskAnyQuestionState();
}

class _AskAnyQuestionState extends State<AskAnyQuestion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerTemplate(),
      appBar: AppBarTemplate(),
      body: AskAnyQuestionPage(),
    );
  }
}

class AskAnyQuestionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("AskAnyQuestion"),     
    );
  }
}
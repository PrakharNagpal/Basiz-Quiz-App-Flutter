import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function
      selectHandler; //FINAL FUNCTION DECLARED TO ACCEPT A FUNCTION AS PARAMETER IN CONSTRUCTOR
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.deepOrange[400],
        textColor: Colors.white,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 20),
        ),
        onPressed: selectHandler,
      ),
    );
  }
}

import 'dart:ui';

import 'package:flutter/material.dart ';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  Result(this.resultScore, this.resetHandler);
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore <= 8) {
      resultText = "You are awesome and amazing!!";
    } else if (resultScore <= 12) {
      resultText = "You are likeable";
    } else {
      resultText = "You are strange";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.amber[420],
              fontSize: 30,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.red)),
            color: Colors.red[200],
            textColor: Colors.blue,
            child: Text(
              'Attempt Again',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}

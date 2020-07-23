import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerQues;
  final String answerText;
  Answer(this.answerQues,this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left:20,right:20),
      child:RaisedButton(
            child: Text(answerText),
            color: Colors.teal,
            textColor: Colors.white,
            onPressed: answerQues,
          )
      
    );
  }
}
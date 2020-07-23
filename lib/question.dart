import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questiontext;
  Question(this.questiontext);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(top:10,bottom: 20),
      child:Text(
      questiontext,
      style: TextStyle(fontSize: 28),
      textAlign: TextAlign.center,
    )
    );
  }
}

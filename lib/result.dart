import 'package:flutter/material.dart';


class Result extends StatelessWidget {
  final int totalScore;
  final Function resetQuiz;

  Result(this.totalScore,this.resetQuiz);
  String get resulT{
    String ans;
if(totalScore==0){
  ans='You Got 0 Out Of 5';
}else if(totalScore==1){
  ans='You Got 1 Out Of 5';
}else if(totalScore==2){
  ans='You Got 2 Out Of 5';
}else if(totalScore==3){
  ans='You Got 3 Out Of 5';
}else if(totalScore==4){
  ans='You Got 4 Out Of 5';
}else if(totalScore==5){
  ans='You Got 5 Out Of 5';
}
    return ans;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: [ Text(
        resulT,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),textAlign: TextAlign.center,
      ),
      FlatButton(onPressed: resetQuiz, child: Text('Restart Quiz!',),textColor: Colors.blue,)
      ]
       )

    );
  }
}

import 'package:Quiz_App/result.dart';
import 'package:flutter/material.dart';
import './quiz.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  var totalScore=0;
  void resetQuiz(){
    setState(() {
       questionIndex=0;
    totalScore=0;
    }); 
  }
  void answerQues(int score) {
    totalScore+=score;
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'how many Continents are there in the world?',
        'answers': [{'text':'4', 'score':0}, {'text':'8', 'score':0}, {'text':'7', 'score':1}, {'text':'6', 'score':0}]
      },
      {
        'questionText': 'which is the largest country in the world according to population',
        'answers': [{'text':'China', 'score':1}, {'text':'russia', 'score':0}, {'text':'australia', 'score':0}, {'text':'india', 'score':0}]
      },
      {
        'questionText': 'which is the largest desert of the world?',
        'answers': [{'text':'sahara', 'score':1}, {'text':'thar', 'score':0}, {'text':'thal', 'score':0}, {'text':'kalahari', 'score':0}]
      },
      {
        'questionText': 'Mount Everest is located in ?',
        'answers': [{'text':'India', 'score':0}, {'text':'China', 'score':0}, {'text':'Nepal', 'score':1}, {'text':'Tibet', 'score':0}]
      },
      {
        'questionText': 'which country is known as Land of Rising Sun?',
        'answers': [{'text':'Russia', 'score':0}, {'text':'Korea', 'score':0}, {'text':'Holland', 'score':0}, {'text':' Japan', 'score':1}]
      },
     
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              'Quiz App',
              style: TextStyle(fontSize: 20),
            ),
            backgroundColor: Color.fromRGBO(0, 128, 128, 12),
            centerTitle: true,
          ),
          body: questionIndex < questions.length
              ? Quiz(answerQues: answerQues, questions: questions,questionIndex: questionIndex,)
              : Result(totalScore,resetQuiz)
                ),
    );
  }
}

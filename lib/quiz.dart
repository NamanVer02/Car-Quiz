import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_DB.dart';
import 'package:flutter_application_2/main_screen.dart';
import 'package:flutter_application_2/questions.dart';
import 'package:flutter_application_2/results_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  String activeScreen = 'MainPage';

  void switchScreen(){
    setState(() {
      activeScreen = 'Questions';
    });
  }

  List<String> guessedAnswers = []; 

  void chooseAnswer(String answer){
    guessedAnswers.add(answer);

    if(guessedAnswers.length == questions.length){
      setState(() {
        activeScreen = 'ResultScreen';
      });
    }
  }

  void restartQuiz(){
    setState(() {
      guessedAnswers.clear();
      activeScreen = 'Questions';
    });
  }

  @override
  Widget build(context){
    Widget screen = MainPage(switchScreen);
    if(activeScreen == 'Questions'){
      screen = Questions(onChooseAnswer: chooseAnswer);
    }

    if(activeScreen == 'ResultScreen'){
      screen = ResultScreen(guessedAnswers, restartQuiz);
    }
    
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xFF7C0000), Color(0xFF3E0000)],
              radius: 1.5,
            ),
          ),
          child: screen,
        ),
      ),
    );  
  }
}
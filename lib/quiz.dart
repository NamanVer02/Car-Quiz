import 'package:flutter/material.dart';
import 'package:flutter_application_2/main_screen.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: RadialGradient(
              colors: [Color(0xFF7C0000), Color(0xFF3E0000)],
              radius: 1.5,
            ),
          ),
          child: const MainPage(),
        ),
      ),
    );  
  }
}
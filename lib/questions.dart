import 'package:flutter/material.dart';
import 'package:flutter_application_2/answer_button.dart';
import 'package:flutter_application_2/data/question_DB.dart';
import 'package:google_fonts/google_fonts.dart';

class Questions extends StatefulWidget{
  const Questions({super.key, required this.onChooseAnswer});

  final void Function (String answer) onChooseAnswer;

  @override
  State<Questions> createState(){
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>{
  var currentQuestionIndex = 0;

  void answerQuestion(String choosenAnswer){
    widget.onChooseAnswer(choosenAnswer);
    setState(() {
      currentQuestionIndex++;
    });
  }


  @override
  Widget build(context){
    final currentQuestion = questions[currentQuestionIndex];
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assests/images/${currentQuestion.image}', 
          height: 300, 
          width: 300,
          ),

          const SizedBox(height: 30,),

          Text(
            currentQuestion.question,
            style: GoogleFonts.lato(
              color: const Color.fromARGB(255, 255, 208, 208),
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30,),

          ...currentQuestion.shuffleAnswers().map((answer){
            return AnswerButton(answer, 
            (){
              answerQuestion(answer);
              }
            );
          }),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_DB.dart';
import 'package:flutter_application_2/main_screen.dart';
import 'package:flutter_application_2/summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget{
  ResultScreen(this.selectedAnswers, {super.key});

  List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for(int i = 0; i < selectedAnswers.length; i++){
      summary.add({
        'questionIndex': i+1,
        'question': questions[i].question,
        'correct': questions[i].answers[0],
        'answer': selectedAnswers[i]
      });
    }

    return summary;
  }

  @override
  Widget build(context){
    final summaryData = getSummaryData();
    final totalQuestions = questions.length;
    final correctQuestions = summaryData.where((element){
      return element['correct'] == element['answer'];
    }).length;

    return Center(
      child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You got $correctQuestions correct out of $totalQuestions',
              style: GoogleFonts.lato(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 30,),

            Summary(summaryData),

            const SizedBox(height: 30,),

            ElevatedButton.icon(
              onPressed: (){}, 
              icon: const Icon(Icons.restart_alt_outlined), 
              label: const Text(
                'Restart Quiz',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0x903E0000),
              )
            ),
          ],
        ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_DB.dart';
import 'package:flutter_application_2/summary.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.selectedAnswers, this.onRestart, {super.key});
  final void Function() onRestart;

  final List<String> selectedAnswers;

  List<Map<String, Object>> getSummaryData(){
    final List<Map<String, Object>> summary = [];

    for(int i = 0; i < selectedAnswers.length; i++){
      summary.add({
        'questionIndex': i+1,
        'question': questions[i].question,
        'correct': questions[i].answers[0],
        'answer': selectedAnswers[i],
        'image': questions[i].image
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
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Column(
            children: [
              Text(
                'You got $correctQuestions correct out of $totalQuestions!',
                style: GoogleFonts.lato(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
        
              const SizedBox(height: 30,),
        
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(168, 62, 0, 0),
                  borderRadius: BorderRadius.circular(30), 
                ),
                height: 400,
                width: 350,
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: SingleChildScrollView(
                  child: Summary(summaryData)
                  ),
              ),
              
              ElevatedButton.icon(
                onPressed: onRestart, 
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
        
              Image.asset(
                'assests/gif/cat.gif',
                height: 250,
                width: 250,
                ),
            ],
          ),
        ),
    );
  }
}
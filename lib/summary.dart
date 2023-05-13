import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/question_DB.dart';

class Summary extends StatelessWidget{
  Summary(this.summary, {super.key});

  List<Map<String, Object>> summary = [];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...summary.map((data){
          return Row(
            children: [
              Text(data['questionIndex'].toString()),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(data['question'] as String),
                    const SizedBox(height: 10,),
                    Text(data['answer'] as String),
                    Text(data['correct'] as String),
                  ],
                ),
              ),
            ],
          ); 
        })
      ],
    );
  }


}
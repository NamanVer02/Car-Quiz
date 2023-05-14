import 'package:flutter/material.dart';
import 'package:flutter_application_2/summary_item.dart';

class Summary extends StatelessWidget{
  const Summary(this.summary, {super.key});

  final List<Map<String, Object>> summary;
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...summary.map((data){
          Color color = Colors.white;

          if(data['answer'] == data['correct']){
            color = Colors.lightGreen;
          }
          else{
            color = Colors.redAccent;
          }
            return Row(
              children: [
                SummaryItem(data['questionIndex'].toString(), data['image'].toString(), data['answer'].toString(), color),
              ],
            ); 
          },
        )
      ],
    );
  }


}
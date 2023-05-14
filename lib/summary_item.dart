import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget{
  const SummaryItem(this.index, this.image, this.answer, this.color, {super.key});
  final String index;
  final String image;
  final String answer; 
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            index,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
    
          const SizedBox(width: 30,),
    
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assests/images/$image',
                height: 40,
                width: 40,
              ),
              
              const SizedBox(width: 10,),
    
              Text(
                answer,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: color,
                  fontSize: 23,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
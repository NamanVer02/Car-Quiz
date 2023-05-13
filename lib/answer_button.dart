import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.answer, this.onTap, {super.key});

  final String answer;
  final void Function() onTap;

  @override
  Widget build(context){
    return Container(
      margin: const EdgeInsets.only(left: 35, right: 35),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
            ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFF3E0000),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            ),
            onPressed: onTap, 
            child: Text(
              answer,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),            
            ),
          ),
        ],
      ),
    );
  }
}
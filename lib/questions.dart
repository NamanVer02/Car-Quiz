import 'package:flutter/material.dart';

class Questions extends StatefulWidget{
  const Questions({super.key});

  @override
  State<Questions> createState(){
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>{
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assests/images/Logo_1.png',),

          const SizedBox(height: 30,),

          const Text(
            'Which car logo is this ?',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 30,),

          SizedBox(
            width: 300,
            child: OutlinedButton(
              onPressed: (){}, 
              child: const Text(
                'Option 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),            
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: OutlinedButton(
              onPressed: (){}, 
              child: const Text(
                'Option 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),            
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: OutlinedButton(
              onPressed: (){}, 
              child: const Text(
                'Option 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),            
              ),
            ),
          ),
          SizedBox(
            width: 300,
            child: OutlinedButton(
              onPressed: (){}, 
              child: const Text(
                'Option 1',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),            
              ),
            ),
          ),
        ],
      ),
    );
  }
}
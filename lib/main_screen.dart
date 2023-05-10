import 'package:flutter/material.dart';

class MainPage extends StatelessWidget{
  const MainPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: RadialGradient(
          colors: [Color(0xFF7C0000), Color(0xFF3E0000)],
          radius: 1.5,
        ),
      ),
      
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assests/images/Quiz_Logo.png'),
            const SizedBox(height: 20),
            const Text(
              'Ultimate Car Logo Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                shadows: [
                  Shadow(
                  color: Color(0x90000000), 
                  offset: Offset(5, 5), 
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Color(0x903E0000)),
              ),
              onPressed: (){print('Pressed');},
              child: const Text(
                'Start Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
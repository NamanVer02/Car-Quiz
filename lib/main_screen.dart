import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainPage extends StatelessWidget{
  const MainPage(this.startQuiz, {super.key});
  
  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assests/images/Quiz_Logo.png'),
          const SizedBox(height: 20),
          Text(
            'Ultimate Car Logo Quiz',
            style: GoogleFonts.bebasNeue(
              color: Colors.white,
              fontSize: 45,
              shadows: [
                const Shadow(
                  color: Color(0x90000000),
                  offset: Offset(5, 5),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton.icon(
            icon: const Icon(Icons.arrow_right_sharp),
            style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll(Color(0x903E0000)),
            ),
            onPressed: startQuiz,
            label: const Text(
              'Start Quiz',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
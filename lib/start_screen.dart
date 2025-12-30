import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          width: 300,
          color: const Color.fromARGB(146, 255, 255, 255),
        ),
        SizedBox(height: 50),
        Text(
          'Learn flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: () {
            startQuiz();
          },
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.white,
            padding: EdgeInsets.fromLTRB(30, 20, 30, 20),
          ),

          label: Text('Start Quiz'),
          icon: Icon(
            Icons.arrow_right_alt_outlined,
            size: 25,
          ),
        ),
      ],
    );
  }
}

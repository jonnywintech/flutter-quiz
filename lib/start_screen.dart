import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

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
        CustomButton(),
      ],
    );
  }
}

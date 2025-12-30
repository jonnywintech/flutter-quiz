import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Opacity(
          opacity: 0.7,
          child: Image.asset(
            'assets/images/quiz-logo.png',
            width: 300,
          ),
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

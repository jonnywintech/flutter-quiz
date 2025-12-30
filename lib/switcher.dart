import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/start_screen.dart';

class Switcher extends StatefulWidget {
  const Switcher({super.key});

  @override
  State<Switcher> createState() => _SwitcherState();
}

class _SwitcherState extends State<Switcher> {
  String currentState = '';

  void change(String newState) {
    setState(() {
      currentState = newState;
    });
  }

  @override
  Widget build(BuildContext context) {
    switch (currentState) {
      case 'quiz':
        return Quiz();
      case 'questions':
        return QuestionsScreen();
      default:
        return StartScreen();
    }
  }
}

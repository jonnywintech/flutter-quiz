import 'package:flutter/material.dart';
import 'package:quiz_app/custom_container.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget activeScreen = StartScreen();

  void switchScreen() {
    setState(() {
      activeScreen = QuestionsScreen();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: StyledContainer(
            colors: [
              Color.fromARGB(255, 27, 92, 190),
              Color.fromARGB(255, 6, 160, 152),
            ],
            child: activeScreen,
          ),
        ),
      ),
    );
    ;
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
// import 'package:quiz_app/questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  // final currentQuestion = question[0];

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'The questions...',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(height: 30),
        AnswerButton(answerText: 'Answer text 1', onTap: () {}),
        AnswerButton(answerText: 'Answer text 2', onTap: () {}),
        AnswerButton(answerText: 'Answer text 3', onTap: () {}),
      ],
    );
  }
}

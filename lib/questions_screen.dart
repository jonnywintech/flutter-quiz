import 'package:flutter/material.dart';
import 'package:quiz_app/answer_button.dart';
import 'package:quiz_app/questions.dart';

class QuestionsScreen extends StatefulWidget {
  QuestionsScreen({super.key});

  final currentQuestion = questions[0];

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child: Text(
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
              widget.currentQuestion.text,
            ),
          ),
          SizedBox(height: 30),
          ...widget.currentQuestion.answers.map((item) {
            return AnswerButton(answerText: item, onTap: () {});
          }),
        ],
      ),
    );
  }
}

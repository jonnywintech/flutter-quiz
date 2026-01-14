import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class RestultsScreen extends StatelessWidget {
  const RestultsScreen({
    super.key,
    required this.selectedAnswers,
    required this.activeScreen,
  });

  final List<String> selectedAnswers;
  final String activeScreen;

  List<Map<String, Object>> getSummaryData() {
    final List<Map<String, Object>> summary = [];

    for (var i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].text,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  void resetQuiz() {}

  @override
  Widget build(BuildContext context) {
    final summaryData = getSummaryData();
    final numTotalQuestions = questions.length;
    final numOfCorrectAnswers = summaryData.where((element) {
      return element['correct_answer'] == element['user_answer'];
    }).length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'You answerred $numOfCorrectAnswers out of $numTotalQuestions questions correctly',
            ),
            SizedBox(height: 30),
            QuestionSummary(getSummaryData()),
            SizedBox(height: 30),
            TextButton(onPressed: resetQuiz, child: Text('Restart quiz')),
          ],
        ),
      ),
    );
  }
}

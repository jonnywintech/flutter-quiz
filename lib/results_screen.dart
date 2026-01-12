import 'package:flutter/material.dart';
import 'package:quiz_app/questions.dart';

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
      });
    }
    return summary;
  }

  void resetQuiz() {}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('You answerred X out of Y questions correctly'),
            SizedBox(height: 30),
            Text('List of  answers and questions...'),
            SizedBox(height: 30),
            TextButton(onPressed: resetQuiz, child: Text('Restart quiz')),
          ],
        ),
      ),
    );
  }
}

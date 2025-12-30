import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OutlinedButton.icon(
          onPressed: () {},
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

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
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
    );
  }
}

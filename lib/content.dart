import 'package:flutter/material.dart';
import 'package:quiz_app/button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          Icons.flutter_dash_outlined,
          size: 20,
          color: Colors.red,
        ),
        SizedBox(
          height: 20,
        ),
        CustomButton(),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/content.dart';
import 'package:quiz_app/custom_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            child: Body(),
          ),
        ),
      ),
    );
  }
}

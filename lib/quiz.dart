import 'package:flutter/material.dart';
import 'package:quizz_app/starting_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'starting-screen';

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget;
    if (activeScreen == 'starting-screen') {
      screenWidget = StartingScreen(switchScreen);
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Color.fromARGB(255, 93, 3, 107),
                Color.fromRGBO(255, 0, 0, 0)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: screenWidget)),
    );
  }
}

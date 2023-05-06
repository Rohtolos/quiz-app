import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/starting_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'starting-screen';
  Widget? screenWidget;

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (activeScreen == 'starting-screen') {
      screenWidget = StartingScreen(startQuiz: switchScreen);
    } else if (activeScreen == 'questions-screen') {
      screenWidget = const QuestionsScreen();
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                Colors.deepPurple,
                Color.fromRGBO(255, 0, 0, 0)
              ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
              child: screenWidget)),
    );
  }
}

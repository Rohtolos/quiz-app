import 'package:flutter/material.dart';
import 'package:quizz_app/questions_screen.dart';
import 'package:quizz_app/result_screen.dart';
import 'package:quizz_app/starting_screen.dart';
import 'package:quizz_app/data/questions.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  String activeScreen = 'starting-screen';
  List<String> selectedAnswers = [];

  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'result-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget? screenWidget;
    void restartQuiz() {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'starting-screen';
      });
    }

    if (activeScreen == 'starting-screen') {
      screenWidget = StartingScreen(startQuiz: switchScreen);
    } else if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    } else if (activeScreen == 'result-screen') {
      screenWidget = ResultScreen(
        restartQuiz: restartQuiz,
        chosenAnswers: selectedAnswers,
      );
    }

    return MaterialApp(
      home: Scaffold(
          body: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.deepPurple, Colors.purple],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: screenWidget)),
    );
  }
}

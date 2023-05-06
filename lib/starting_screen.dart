import 'package:flutter/material.dart';

class StartingScreen extends StatelessWidget {
  const StartingScreen({required this.startQuiz, super.key});
  final void Function()? startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/quiz-logo.png',
        width: 300,
        color: const Color.fromARGB(200, 255, 255, 255),
      ),
      const SizedBox(
        height: 20,
      ),
      const Text('Learn Flutter the fun way',
          style: TextStyle(color: Colors.white, fontSize: 20)),
      const SizedBox(
        height: 20,
      ),
      OutlinedButton.icon(
        onPressed: startQuiz,
        style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
        label: const Text('Start Quiz'),
        icon: const Icon(Icons.quiz),
      ),
    ]));
  }
}

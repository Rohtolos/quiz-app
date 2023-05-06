import 'package:flutter/material.dart';
import 'package:quizz_app/quiz.dart';

void main() {
  runApp(const Quiz());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Quiz();
  }
}

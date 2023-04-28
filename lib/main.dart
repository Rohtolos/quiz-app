import 'package:flutter/material.dart';
import 'package:quizz_app/starting_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 93, 3, 107), Color.fromRGBO(255, 0, 0, 0)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: const StartingScreen()),
    ));
  }
}

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }
import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier({required this.data, super.key});
  final Map<String, Object> data;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: data['correct_answer'] == data['user_answer']
              ? Colors.green
              : Colors.red),
      child: Text(
        ((data['question_index'] as int) + 1).toString(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}

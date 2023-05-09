import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quizz_app/question_identifier.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});
  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
            children: summaryData.map((data) {
          return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            QuestionIdentifier(data: data),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['question'] as String,
                    style: GoogleFonts.poppins(color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    data['user_answer'] as String,
                    style: const TextStyle(color: Colors.red),
                    textAlign: TextAlign.start,
                  ),
                  Text(data['correct_answer'] as String,
                      style: const TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ]);
        }).toList()),
      ),
    );
  }
}

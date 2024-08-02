import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app_myself/utilities/list_of_questions.dart';

class Question extends StatelessWidget {
  final int number;
  const Question({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Text(
      questionsList[number],
      style: GoogleFonts.mulish(
              fontSize: 18, fontWeight: FontWeight.w700, letterSpacing: -0.3),
    );
  }
}
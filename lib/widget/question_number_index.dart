import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionNumberIndex extends StatelessWidget {
  final int number;

  const QuestionNumberIndex({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 68,
        height: 35.08,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.25),
                offset: Offset(
                  1,
                  5.0,
                ),
                blurRadius: 1.5,
                spreadRadius: 1,
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(2, 1),
                blurRadius: 0,
                spreadRadius: 0,
              )
        ]

      ),
      child: Center(
        child: Text(
          "$number / 10",
          style: GoogleFonts.mulish(
            fontSize: 15,
            fontWeight: FontWeight.w700,
            // wordSpacing: -0.3,
            letterSpacing: -0.3,
        ),
      )
      )
    );
  }
}
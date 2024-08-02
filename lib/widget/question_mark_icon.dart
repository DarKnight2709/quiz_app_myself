import 'package:flutter/material.dart';

class QuestionMarkIcon extends StatelessWidget {
  const QuestionMarkIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      color: Colors.white,
      child: Image.asset('assets/logo_quiz_app.png'),

    );
  }
}
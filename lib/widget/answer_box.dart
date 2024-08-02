import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_myself/controller/index_controller.dart';

class AnswerBox extends StatelessWidget {
  final int optionIndex;
  final String answer;
  final bool isSelected;
  final List<String> answerList = ["x", "A", "B", "C", "D"];

   AnswerBox({super.key, required this.optionIndex, required this.answer, required this.isSelected}) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        var selectedAnswer = context.read<IndexController>();
        selectedAnswer.select(optionIndex);
      },
      child: Padding(
        padding:  const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          width: double.infinity,
          height: 45,
          decoration:  BoxDecoration(
            color: isSelected? Colors.black: Colors.blue,
            borderRadius: BorderRadius.circular(8)
            
          ),
          child:  Row(
            children: [
              Text(answerList[optionIndex], style: const TextStyle(color: Colors.white)),
              const SizedBox(width: 4,),
              Text('. $answer',  style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w700))
            ],
          ),
        ),
      ),
    );
  }
}
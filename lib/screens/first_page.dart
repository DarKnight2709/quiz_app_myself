import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_myself/controller/index_controller.dart';
import 'package:quiz_app_myself/screens/result_page.dart';
import 'package:quiz_app_myself/utilities/list_of_answers.dart';
import 'package:quiz_app_myself/widget/answer_box.dart';
import 'package:quiz_app_myself/widget/choose_an_answer_box.dart';
import 'package:quiz_app_myself/widget/nothing_widget.dart';
import 'package:quiz_app_myself/widget/question.dart';
import 'package:quiz_app_myself/widget/question_mark_icon.dart';
import 'package:quiz_app_myself/widget/question_number_index.dart';

class FirstPage extends StatelessWidget {
  FirstPage({super.key});

  int indexForQuestionNumber = 1;
  int selectedAnswer = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Quiz",
            style: GoogleFonts.mulish(
                color: Colors.black,
                fontWeight: FontWeight.w700,
                fontSize: 25,
                letterSpacing: -0.3)),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Consumer<IndexController>(builder: (context, provider, child) {
              indexForQuestionNumber = provider.currentQuestionIndex;
              print("in consumer 1: $indexForQuestionNumber");

              return QuestionNumberIndex(
                number: indexForQuestionNumber,
              );
            }),
            const SizedBox(height: 20),
            Consumer<IndexController>(builder: (context, provider, child) {
              indexForQuestionNumber = provider.currentQuestionIndex;
              return Question(number: indexForQuestionNumber);
            }),
            const SizedBox(height: 15),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Divider(
                thickness: 1.2,
              ),
            ),
            const QuestionMarkIcon(),
            const SizedBox(height: 15),
            const ChooseAnAnswerBox(),
            const SizedBox(height: 12),
            Consumer<IndexController>(builder: (context, provider, child) {
              indexForQuestionNumber = provider.currentQuestionIndex;

              selectedAnswer = provider.currentSelectedAnswer;
              print("in consumer 2: $indexForQuestionNumber");

              return Column(
                children: [
                  AnswerBox(
                    optionIndex: 1,
                    answer: optionOne[indexForQuestionNumber],
                    isSelected: selectedAnswer == 1 ? true : false,
                  ),
                  AnswerBox(
                    optionIndex: 2,
                    answer: optionTwo[indexForQuestionNumber],
                    isSelected: selectedAnswer == 2 ? true : false,
                  ),
                  AnswerBox(
                    optionIndex: 3,
                    answer: optionThree[indexForQuestionNumber],
                    isSelected: selectedAnswer == 3 ? true : false,
                  ),
                  AnswerBox(
                    optionIndex: 4,
                    answer: optionFour[indexForQuestionNumber],
                    isSelected: selectedAnswer == 4 ? true : false,
                  ),
                  const SizedBox(height: 100),
                  selectedAnswer > 0
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: GestureDetector(
                                onTap: () {
                                  if (indexForQuestionNumber == 10) {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ResultPage()));
                                  } else {
                                    context
                                        .read<IndexController>()
                                        .checkAndNextQuestion();
                                  }
                                },
                                child: Container(
                                  width: 70,
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(8),
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
                                      ]),
                                  child: const Row(
                                    children: [
                                      Text("Next",
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold)),
                                      SizedBox(width: 5),
                                      Icon(Icons.arrow_forward,
                                          color: Colors.blue)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      : const NothingWidget()
                ],
              );
            })
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_myself/controller/index_controller.dart';
import 'package:quiz_app_myself/screens/start_screen.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Result", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
      ),
      body: Consumer<IndexController>(builder: (context, provider, child){
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularPercentIndicator(
                radius: 50,
                percent: provider.correctAnswerCounter/10,
                lineWidth: 10,
                animation: true,
                animationDuration: 1000,
                startAngle: 270,
                circularStrokeCap: CircularStrokeCap.round,
                backgroundColor: Colors.grey.shade300,
                center: Text("${provider.correctAnswerCounter}/10", style: GoogleFonts.mulish(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                )),
              ),
              const SizedBox(height: 40),
              Container(
                 width: 150,
                  height: 40,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade500,
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Center(
                  child: Text(
                    provider.correctAnswerCounter < 5? "Ooops...!": "Awesome!",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),

              ),
              const SizedBox(height: 40),
              provider.correctAnswerCounter < 5
              ? Padding(
                              padding: const EdgeInsets.only(
                                top: 23,
                              ),
                              child: Container(
                                width: 160,
                                height: 37,
                                color: Colors.white,
                                child: InkWell(
                                  onTap: () {
                                    provider.tryAgain();
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const StartScreen()));
                                  },
                                  child: Text(
                                    'Try Again',
                                    textAlign: TextAlign.center,
                                    style: GoogleFonts.mulish(
                                      decoration: TextDecoration.underline,
                                      color:
                                          const Color.fromRGBO(66, 130, 241, 1),
                                      fontWeight: FontWeight.w700,
                                      letterSpacing: -0.3,
                                      fontSize: 15,
                                    ),
                                  ),
                                ),
                              ),
                            )
                          : Padding(
                              padding: const EdgeInsets.only(
                                top: 23,
                              ),
                              child: Container(
                                width: 160,
                                height: 60,
                                color: Colors.white,
                                child: Text(
                                  'Congratulations\n You Passed the exam',
                                  textAlign: TextAlign.center,
                                  style: GoogleFonts.mulish(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: -0.3,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ),
            ],
          )
        );
      }),
    );
  }
}
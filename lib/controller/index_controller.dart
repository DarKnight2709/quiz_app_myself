

import 'package:flutter/material.dart';

class IndexController extends ChangeNotifier{
  int currentQuestionIndex = 1;
  int correctAnswerCounter =  0;
  int currentSelectedAnswer = 0;

  
  void select(int selectedAnswer){
    currentSelectedAnswer = selectedAnswer;
    notifyListeners();
  }

  void checkAndNextQuestion(){
    checkAnswer();
    ++currentQuestionIndex;
    currentSelectedAnswer = 0;
    print(currentQuestionIndex);
    notifyListeners();
  }

  void tryAgain(){
    currentQuestionIndex = 1;
    correctAnswerCounter = 0;
    currentSelectedAnswer = 0;
  }

  void checkAnswer(){
    if(currentQuestionIndex == 1 && currentSelectedAnswer == 1){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 2 && currentSelectedAnswer == 3){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 3 && currentSelectedAnswer == 2){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 4 && currentSelectedAnswer == 2){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 5 && currentSelectedAnswer == 1){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 6 && currentSelectedAnswer == 4){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 7 && currentSelectedAnswer == 1){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 8 && currentSelectedAnswer == 3){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 9 && currentSelectedAnswer == 3){
      correctAnswerCounter++;
    }
    if(currentQuestionIndex == 10 && currentSelectedAnswer == 4){
      correctAnswerCounter++;
    }
    

  }


}
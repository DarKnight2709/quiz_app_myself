import 'package:flutter/material.dart';
import 'package:quiz_app_myself/screens/start_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigateToFirstPage();
  }

  void navigateToFirstPage(){
    Future.delayed(const Duration(seconds: 2), (){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const StartScreen()));
    });
    
  }
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: SizedBox(
          width: 150,
          height: 150,
          child: Image.asset('assets/logo_quiz_app.png')
        )
      )
    ) 

    
    ;
  }
}
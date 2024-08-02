import 'package:flutter/material.dart';
import 'package:quiz_app_myself/screens/first_page.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/logo_quiz_app.png'),
            ElevatedButton(
              onPressed: (){
                Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) =>  FirstPage()));

              },
              style: TextButton.styleFrom(
                elevation: 5,
                foregroundColor: Colors.blue, textStyle: const TextStyle(color: Colors.white, fontSize: 20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  
                ),
              ),
              child: const Text("START QUIZ", style: TextStyle(fontWeight: FontWeight.bold))
            )

          ],
        )
      )

    );
  }
}
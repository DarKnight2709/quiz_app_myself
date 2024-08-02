import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app_myself/controller/index_controller.dart';
import 'package:quiz_app_myself/screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => IndexController(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen()
      ),
    );
  }
}

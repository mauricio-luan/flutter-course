import 'package:flutter/material.dart';
import 'package:adv_basics/base_layout.dart';
import 'package:adv_basics/home_screen.dart';
import 'package:adv_basics/questions_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  var activeScreen = 'home';

  void changeScreen() {
    setState(() {
      activeScreen = 'questions';
    });
  }

  Widget defineScreen() {
    return activeScreen == 'home' ? HomeScreen(changeScreen) : QuestionsScreen();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseLayout(
        child: defineScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  final String imagePath = 'assets/images/quiz.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Image.asset(imagePath, width: 200),
        const SizedBox(height: 50),
        const Text(
          "Learn Flutter the fun way!",
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton(
          onPressed: () => debugPrint('clicked'),
          style: OutlinedButton.styleFrom(
            shape: const LinearBorder(),
            side: const BorderSide(width: 2),
          ),
          child: const Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen(this.changeRoute, {super.key});

  final void Function() changeRoute;
  final String imagePath = 'assets/images/quiz.png';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      children: [
        Image.asset(
          imagePath,
          width: 200,
          color: const Color.fromARGB(100, 255, 255, 255),
        ),
        const SizedBox(height: 50),
        Text(
          "Learn Flutter the fun way!",
          style: GoogleFonts.poppins(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
        const SizedBox(height: 50),
        OutlinedButton.icon(
          onPressed: changeRoute,
          style: OutlinedButton.styleFrom(
            shape: const LinearBorder(),
            side: const BorderSide(width: 2),
          ),
          icon: const Icon(Icons.arrow_right_alt),
          label: const Text(
            'Start Quiz',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.label, required this.callback});

  final String label;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: callback,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 58, 14, 134),
        foregroundColor: Colors.white,
        padding: const EdgeInsetsGeometry.symmetric(vertical: 10, horizontal: 40),
      ),
      child: Text(label),
    );
  }
}

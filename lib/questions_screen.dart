import 'package:adv_basics/questions.dart';
import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisSize: .min,
      children: [CurrentQuestion()],
    );
  }
}

class CurrentQuestion extends StatefulWidget {
  const CurrentQuestion({super.key});

  @override
  State<StatefulWidget> createState() => _CurrentQuestionState();
}

class _CurrentQuestionState extends State<CurrentQuestion> {
  var index = 0;
  var data = questions;

  void nextQuestion() {
    setState(() => index++);
  }

  @override
  Widget build(BuildContext context) {
    final question = data[index];

    return Column(
      children: [
        Text(question.question),

        for (final answer in question.answers)
          ElevatedButton(
            onPressed: nextQuestion,
            child: Text(answer),
          ),
      ],
    );
  }
}

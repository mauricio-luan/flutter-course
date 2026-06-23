import 'package:adv_basics/answer_button.dart';
import 'package:adv_basics/questions.dart';
import 'package:flutter/material.dart';
import 'package:adv_basics/models/quiz_questions.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(40),
      child: CurrentQuestion(),
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
      mainAxisSize: .min,
      mainAxisAlignment: .center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          question.question,
          style: const TextStyle(color: Colors.white),
          textAlign: .center,
        ),
        const SizedBox(height: 30),
        for (final answer in question.getShuffledAnswers())
          AnswerButton(label: answer, callback: nextQuestion),
      ],
    );
  }
}

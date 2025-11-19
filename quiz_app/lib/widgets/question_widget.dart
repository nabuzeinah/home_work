import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/multi_options_list.dart';
import 'package:quiz_app/widgets/one_option_list.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';

class QuestionWidget extends StatelessWidget {
  const QuestionWidget({super.key, required this.myQuestion});

  final Question myQuestion;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 30,
        children: [
          QuestionNumber(
            questionNumber: myQuestion.questionNumber!,
            imageURL: 'assets/images/2.png',
          ),
          Text(
            myQuestion.title!,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          myQuestion.isMultiAnswer
              ? MultiOptionsList(question: myQuestion)
              : OneOptionsList(question: myQuestion),
        ],
      ),
    );
  }
}

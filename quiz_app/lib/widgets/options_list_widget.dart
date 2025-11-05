import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/option_widget.dart';

class OptionsWidget extends StatelessWidget {
  OptionsWidget({super.key, required this.question});  
  Question question;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 10,
      children: [
        OptionWidget(title: question.firstOption!),
        OptionWidget(title: question.secondOption!),
        OptionWidget(title: question.thirdOption!),
        OptionWidget(title: question.fourthOption!),
      ],
    );
  }
}

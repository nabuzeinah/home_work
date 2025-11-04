import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/option_widget.dart';

class OptionsWidget extends StatelessWidget {
  OptionsWidget({super.key, required this.myQuestions});
  QuestionsManager myQuestions;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 10,
      children: [
        OptionWidget(title: myQuestions.questions[0].firstOption!,),
        OptionWidget(title: myQuestions.questions[0].secondOption!),
        OptionWidget(title: myQuestions.questions[0].thirdOption!),
        OptionWidget(title: myQuestions.questions[0].fourthOption!),
      ],
    );
  }
}

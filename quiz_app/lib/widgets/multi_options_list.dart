import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/option_wid.dart';

class MultiOptionsList extends StatefulWidget {
  MultiOptionsList({super.key, required this.question});
  Question question;

  @override
  State<MultiOptionsList> createState() => _MultiOptionsListState();
}

class _MultiOptionsListState extends State<MultiOptionsList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.question.options.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: OptionWidget(
              text: widget.question.options[index],
              isMultiOption: widget.question.isMultiAnswer,
              isSelected: false,
              onTapOneOption: () {
                if (widget.question.userAnswers.isNotEmpty) {
                  widget.question.userAnswers.clear();
                  // widget.question.updateAnswer(this.index);
                } else {
                  // widget.question.updateAnswer(this.index);
                }
              },
            ),
          );
        },
      ),
    );
  }
}

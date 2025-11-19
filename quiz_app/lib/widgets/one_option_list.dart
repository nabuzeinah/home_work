import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/widgets/option_wid.dart';

class OneOptionsList extends StatefulWidget {
  OneOptionsList({super.key, required this.question});
  Question question;

  @override
  State<OneOptionsList> createState() => _OneOptionsListState();
}

class _OneOptionsListState extends State<OneOptionsList> {
  bool isOptionSlected = false;
  int index = -1;
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
              isSelected: isOptionSlected && this.index == index ? true : false,
              onTapOneOption: () {
                isOptionSlected = true;
                this.index = index;
                if (widget.question.userAnswers.isNotEmpty) {
                  widget.question.userAnswers.clear();
                  widget.question.updateAnswer(this.index);
                } else {
                  widget.question.updateAnswer(this.index);
                }
                setState(() {});
              },
            ),
          );
        },
      ),
    );
  }
}

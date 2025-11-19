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
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 10,
      children: [
        for (int i = 0; i < widget.question.options.length; i++)        
          OptionWidget(
            text: widget.question.options[i],
            isMultiOption: widget.question.isMultiAnswer,
            isSelected: isOptionSlected && index == i?true:false,
            onTapOneOption: () {
              isOptionSlected = true;
              index = i;
              setState(() {});
            },
          ),
      ],
    );
  }
}

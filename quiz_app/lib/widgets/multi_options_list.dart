import 'package:flutter/material.dart';
import 'package:quiz_app/models/question_model.dart';
import 'package:quiz_app/models/questions_manager.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      spacing: 10,
      children: [
        for(int i=0; i< widget.question.options.length; i++)
           OptionWidget(
            text: widget.question.options[i], 
            isMultiOption: widget.question.isMultiAnswer, 
            isSelected: false,
           onTapOneOption: () {
             
           },)
  
      ],
    );
  }
}

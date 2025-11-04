import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/back_button_widget.dart';
import 'package:quiz_app/widgets/background_widget.dart';
import 'package:quiz_app/widgets/next_button_widget.dart';
import 'package:quiz_app/widgets/options_list_widget.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';

class QuestionPage extends StatelessWidget {
  QuestionPage({super.key});
  QuestionsManager myQuestions = QuestionsManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                QuestionNumber(
                  questionNumber: myQuestions.questions[0].questionNumber!,
                ),
                Text(myQuestions.questions[0].title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30
                ),),
                OptionsWidget(myQuestions: myQuestions),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonWidget(),
                    NextButtonWidget(),
                  ],
                ),
              ],
            ),
          ),
        ],
    
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/back_button_widget.dart';
import 'package:quiz_app/widgets/background_widget.dart';
import 'package:quiz_app/widgets/next_button_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({super.key});
  int index = 0;

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  QuestionsManager myQuestions = QuestionsManager();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 110),
            child: Column(
              children: [
                Expanded(
                  child: PageView(
                
                    children: [
                      for (int i = 0; i < myQuestions.questions.length; i++) 
                      QuestionWidget(
                        myQuestion: myQuestions.questions[i],
                      ),
                    ],
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BackButtonWidget(
                      onBackClick: () {
                        if (widget.index > 0) {
                          widget.index--;
                          setState(() {});
                        }
                      },
                    ),
                    NextButtonWidget(
                      onNextClick: () {
                        if (widget.index < myQuestions.questions.length - 1) {
                          widget.index++;
                          setState(() {});
                        }
                      },
                    ),
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

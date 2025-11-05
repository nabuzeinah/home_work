import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/back_button_widget.dart';
import 'package:quiz_app/widgets/background_widget.dart';
import 'package:quiz_app/widgets/next_button_widget.dart';
import 'package:quiz_app/widgets/options_list_widget.dart';
import 'package:quiz_app/widgets/question_number_widget.dart';

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
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 30,
              children: [
                QuestionNumber(
                  questionNumber:
                      myQuestions.questions[widget.index].questionNumber!,
                ),
                Expanded(
                  child: Column(
                    spacing: 30,
                    children: [
                      Text(
                        myQuestions.questions[widget.index].title!,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      OptionsWidget(
                        question: myQuestions.questions[widget.index],
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

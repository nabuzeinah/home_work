import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/widgets/back_button_widget.dart';
import 'package:quiz_app/widgets/background_widget.dart';
import 'package:quiz_app/widgets/next_button_widget.dart';
import 'package:quiz_app/widgets/question_widget.dart';

class QuestionPage extends StatefulWidget {
  QuestionPage({super.key});


  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  QuestionsManager myQuestions = QuestionsManager();
    PageController pageController = PageController();
    int pageIndex = 0;

    @override 
    void dispose() {
      pageController.dispose();
      super.dispose();
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundWidget(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 80),
            child: Column(
              children: [
                Expanded(
                  child: PageView.builder(
                    controller: pageController,
                    onPageChanged: (index) {
                      pageIndex = index;
                      setState(() {});
                    },
                    itemCount: myQuestions.questions.length,
                    itemBuilder: (context, index) {
                      return QuestionWidget(
                        myQuestion: myQuestions.questions[index],
                      );
                    },
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Visibility(
                        visible: pageIndex != 0,
                        child: BackButtonWidget(
                          pageController: pageController,
                         
                        ),
                      ),
                      NextButtonWidget(
                        myQuestions: myQuestions,
                        pageCount: myQuestions.questions.length,
                        pageController: pageController,
                       
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

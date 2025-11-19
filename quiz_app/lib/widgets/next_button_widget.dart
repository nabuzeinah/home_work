import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_manager.dart';
import 'package:quiz_app/pages/result_page.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({
    super.key,
    required this.pageController,
    required this.pageCount, 
    required this.myQuestions,
  });

  final PageController pageController;
  final QuestionsManager myQuestions;
  final int pageCount;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        if (pageController.page!.toInt() < pageCount - 1) {
          pageController.nextPage(
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
          );
        } else {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ResultPage(myQuestions: myQuestions,)),
          );
        }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0XFF8C82FC),
        minimumSize: Size(60, 45),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Row(
        spacing: 15,
        children: [
          Text('Next', style: TextStyle(fontSize: 16, color: Colors.white)),
          Icon(Icons.arrow_forward_ios_outlined, color: Colors.white),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class QuestionNumber extends StatelessWidget {
   QuestionNumber({super.key, required this.questionNumber});
  int questionNumber;

  @override
  Widget build(BuildContext context) {
    return Container(
      //margin: EdgeInsets.all(10),
      width: 140,
      height: 50,
      decoration: BoxDecoration(
        color: Color(0XFF8C82FC),
        borderRadius: BorderRadius.circular(30.0),
      ),      
                
              
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
       
        children: [
        Icon(Icons.query_builder_rounded, color: Colors.white,),
        SizedBox(width: 10,),
        Text('Question ', 
        style: TextStyle(
          color: Colors.white,
        ),),
       Text(questionNumber.toString(), 
       style: TextStyle(color: Colors.white),
          ),
        ],
        ),
    );
  }
}

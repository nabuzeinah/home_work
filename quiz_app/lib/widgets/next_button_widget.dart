import 'package:flutter/material.dart';

class NextButtonWidget extends StatelessWidget {
  const NextButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Navigator.push(context,
        // MaterialPageRoute(
        //   builder: (context)=> QuestionPage()),
        //   );
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

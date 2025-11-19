import 'package:flutter/material.dart';
import 'package:quiz_app/pages/question_page.dart';
import 'package:quiz_app/widgets/background_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFF1E1E1E),
      body: Stack(
        children: [
          BackgroundWidget(),
          Container(
             decoration: BoxDecoration(
          image: DecorationImage(
          image: AssetImage('assets/images/home_image.png'),
          fit: BoxFit.contain,
        ),
         ),
          ),
          Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,   
            crossAxisAlignment: CrossAxisAlignment.start,         
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [                  
                  const Text('Good morning,', 
                  style: TextStyle(
                    fontFamily: 'Gilroy',
                    color: Colors.white,
                    fontSize: 18,
                    ),
                  ),
                  const Text(
                    'New topic is waiting',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
             
              ElevatedButton(
                
                onPressed: () {
                  Navigator.push(context, 
                  MaterialPageRoute(
                    builder: (context)=> QuestionPage()),
                    );
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: Color(0XFF2B0063),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), 
                  ),
                ),
                child: const Text('Start Quiz',
                style: TextStyle(
                  fontSize: 18,
                ),),
              ),
            ],
          ),
        ),
        ],
      ),
    );
  }
}

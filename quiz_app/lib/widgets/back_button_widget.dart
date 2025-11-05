import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({super.key, required this.onBackClick});
  final VoidCallback onBackClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
                
                onPressed: onBackClick,
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Color(0XFF352E49),
                  minimumSize: Size(60, 45),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), 
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  spacing: 15,
                  children: [
                    Icon(Icons.arrow_back_ios_new, color: Colors.white,),
                     Text('Back',
                    style: TextStyle(
                      fontSize: 16,
                     
                    ),),
                  ],
                ),
              );
  }
}
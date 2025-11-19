import 'package:flutter/material.dart';

class BackgroundWidget extends StatelessWidget {
  const BackgroundWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          
          gradient: RadialGradient(
            colors: [
              Color(0XFF564770), // Inner color
              Color(0XFF16162F), // Outer color
            ],
            center: Alignment.center, // Center of the gradient
            radius:1, 
            stops: [0, 1], 
          ),
        ),
        
    );
  }
}
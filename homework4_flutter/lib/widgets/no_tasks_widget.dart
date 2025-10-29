import 'package:flutter/material.dart';

class NoTasksWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/check.png',
          width: 120 ,
          height: 120,
          ),
        Text('No tasks yet',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black54,
        ),
        ),
        SizedBox(height: 15,),
        Text('Add a task to get started',
        style: TextStyle(
          fontSize: 14, 
          color: Colors.black38),
        ),
        SizedBox(height: 25,),
      ],
    );
  }
}

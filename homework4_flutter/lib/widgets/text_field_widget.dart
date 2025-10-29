import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';

class TextFieldWidget extends StatefulWidget {
  const TextFieldWidget({super.key, required this.myTaskManager});
  final TasksManager myTaskManager;

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        title: TextField(
          decoration: InputDecoration(
            hoverColor: Colors.grey,
            hintText: 'Add a new task...',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        trailing: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: CircleBorder(), // Makes the button circular
            padding: EdgeInsets.all(12), // Adjust padding as needed
            backgroundColor: Colors.grey[200], // Button background color
            foregroundColor: Colors.grey, // Text/icon color
          ),
          onPressed: () {
            widget.myTaskManager.createTask('10 mins reading', false);
            setState(() {
              
            });
          },
          child: Icon(Icons.add, size: 40),
        ),
      ),
    );
  }
}

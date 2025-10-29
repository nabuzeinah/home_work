import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_model.dart';
import 'package:intl/intl.dart';

class TaskWidget extends StatelessWidget {
  final Task task;

  const TaskWidget({super.key, required this.task});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), 
            spreadRadius: 1, 
            blurRadius: 2, 
            offset: Offset(0, 2), 
          ),
        ],
      ),
      child: ListTile(
        leading: Checkbox(
          value: task.isCompleted,  
          onChanged: (value) {
            
          },
          ),
          title: Text(task.title,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),),
          subtitle: Row(
            children: [
              Text('Created: ',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),),
              Text(DateFormat('dd/MM/yyyy').format(task.createdDate),
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            ],
          ),
          trailing: Icon(Icons.delete_outline_outlined, color: Colors.red,),
      ),
    );
  }
}

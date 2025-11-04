import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';
import 'package:homework4_flutter/models/task_model.dart';
import 'package:intl/intl.dart';

class TaskWidget extends StatefulWidget {
  final Task task;
  final TasksManager myTaskManager;
  final Function() onDelete;
  const TaskWidget({
    super.key,
    required this.task,
    required this.myTaskManager,
    required this.onDelete,
  });

  @override
  State<TaskWidget> createState() => _TaskWidgetState();
}

class _TaskWidgetState extends State<TaskWidget> {
  bool isChecked = false;

  TextStyle unCheckedTextStyle = TextStyle(fontWeight: FontWeight.bold);
  TextStyle checkedTextStyle = TextStyle(
    color: Colors.grey,
    decoration: TextDecoration.lineThrough,
    decorationColor: Colors.grey,
    decorationThickness: 2,
  );

  @override
  Widget build(BuildContext context) {
    isChecked = widget.task.isCompleted;
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
          value: isChecked,
          onChanged: (newValue) {
            isChecked = newValue!;
            if (isChecked) {
              widget.task.completeTask();
            } else {
              widget.task.unCompleteTask();
            }

            setState(() {});
          },
        ),
        title: Text(
          widget.task.title,
          style: isChecked ? checkedTextStyle : unCheckedTextStyle,
        ),
        subtitle: Row(
          children: [
            Text(
              'Created: ',
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
            Text(
              DateFormat('dd/MM/yyyy').format(widget.task.createdDate),
              style: TextStyle(color: Colors.grey, fontSize: 13),
            ),
          ],
        ),
        trailing: GestureDetector(
          child: Icon(Icons.delete_outline_outlined, color: Colors.red),
          onTap: () {
            widget.myTaskManager.deleteTask(widget.task.title);
            widget.onDelete();
            setState(() {});
          },
        ),
      ),
    );
  }
}

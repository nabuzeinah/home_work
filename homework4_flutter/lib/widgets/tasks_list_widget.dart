import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';
import 'package:homework4_flutter/models/task_model.dart';
import 'package:homework4_flutter/widgets/task_widget.dart';

class TasksListWidget extends StatefulWidget {
  const TasksListWidget({super.key, required this.myTaskManager});
  final TasksManager myTaskManager;

  @override
  State<TasksListWidget> createState() => _TasksListWidgetState();
}

class _TasksListWidgetState extends State<TasksListWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 0; i < widget.myTaskManager.tasks.length; i++)
          TaskWidget(
            task: widget.myTaskManager.tasks[i],
          ),
        ],
      ),
    );
  }
}

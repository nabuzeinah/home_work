import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';
import 'package:homework4_flutter/widgets/task_widget.dart';

class TasksListWidget extends StatefulWidget {
  const TasksListWidget({
    super.key,
    required this.myTaskManager,
    required this.onDelete,
  });
  final TasksManager myTaskManager;
  final Function() onDelete;

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
              myTaskManager: widget.myTaskManager,
              onDelete: () {
                widget.onDelete();
                setState(() {});
              },
            ),
        ],
      ),
    );
  }
}

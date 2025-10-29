import 'package:homework4_flutter/models/task_model.dart';

class TasksManager {
  List<Task> tasks = [];

  void createTask(String title, bool isCompleted) {
    tasks.add(
      Task(title: title, createdDate: DateTime.now(), isCompleted: isCompleted),
    );
  }

  void deleteTask(String title) {
    tasks.removeWhere((task) => task.title == title);
  }

  bool hasTasks() {
    if (tasks.isEmpty) {
      return false;
    } else {
      return true;
    }
  }

  void searchTaskByTitle(String title) {
    for (var task in tasks) {
      if (task.title == title) {
        print('Task found:');
        //task.displayNote();
        return;
      }
    }
  }
}

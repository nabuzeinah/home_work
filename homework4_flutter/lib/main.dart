import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';
import 'package:homework4_flutter/widgets/no_tasks_widget.dart';
import 'package:homework4_flutter/widgets/tasks_list_widget.dart';
import 'package:homework4_flutter/widgets/text_field_widget.dart';

void main() {
  runApp(const MyTasks());
}

class MyTasks extends StatefulWidget {
  const MyTasks({super.key});

  @override
  State<MyTasks> createState() => _MyTasksState();
}

class _MyTasksState extends State<MyTasks> {
  TasksManager myTaskManager = TasksManager();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0XFFF2F8F6),
        appBar: AppBar(
          backgroundColor: Color(0XFF9CEFE0),
          title: Text(
            'My Tasks',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child:
                  myTaskManager.hasTasks()
                      ? TasksListWidget(myTaskManager: myTaskManager)
                      : NoTasksWidget(),
            ),
            Container(
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
                    backgroundColor:
                        Colors.grey[200], // Button background color
                    foregroundColor: Colors.grey, // Text/icon color
                  ),
                  onPressed: () {
                    myTaskManager.createTask('10 mins reading', false);
                    setState(() {});
                  },
                  child: Icon(Icons.add, size: 40),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

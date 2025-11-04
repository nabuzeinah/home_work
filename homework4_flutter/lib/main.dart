import 'package:flutter/material.dart';
import 'package:homework4_flutter/models/task_manager_model.dart';
import 'package:homework4_flutter/widgets/no_tasks_widget.dart';
import 'package:homework4_flutter/widgets/tasks_list_widget.dart';

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
  final TextEditingController _controller = TextEditingController();

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
                      ? TasksListWidget(
                        myTaskManager: myTaskManager, 
                        onDelete: (){
                          setState(() {
                        
                      });
                      },
                      )
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
                  controller: _controller,
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
                    shape: CircleBorder(), 
                    padding: EdgeInsets.all(12), 
                    backgroundColor:
                        Colors.grey[200], 
                    foregroundColor: Colors.grey, 
                  ),
                  onPressed: () {
                    String enteredText = _controller.text;
                    myTaskManager.createTask(enteredText, false);
                    setState(() {});
                  },
                  child: Icon(Icons.add, size: 30),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

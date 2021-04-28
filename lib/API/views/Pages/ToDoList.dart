import 'package:flutter/material.dart';
import 'package:project_changed/API/models/todo.dart';
import 'package:project_changed/API/services/toDoServices.dart';
import 'package:project_changed/API/views/Widgets/task.dart';

class ToDoList extends StatefulWidget {
  @override
  _ToDoListState createState() => _ToDoListState();
}

class _ToDoListState extends State<ToDoList> {
  bool isLoading = true;
  List<Todo> task = [];

  getList() async {
    task = await ToDoService().getTasks();
    isLoading = false;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    getList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To Do List'),
      ),
      body: isLoading
          ? Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: task.length,
              itemBuilder: (BuildContext context, int index) {
                return Task(
                  currentTask: task[index],
                  title: task[index].title,
                  completed: task[index].completed,
                );
              },
            ),
    );
  }
}

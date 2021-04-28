import 'package:flutter/material.dart';
import 'package:project_changed/API/models/todo.dart';

class TaskDetails extends StatefulWidget {
  final Todo task;
  TaskDetails({this.task});
  @override
  _TaskDetailsState createState() => _TaskDetailsState();
}

class _TaskDetailsState extends State<TaskDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Task ( ${widget.task.id} ) Details',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Container(
            child: SizedBox(
              child: Column(
                children: [
                  Text(
                    "Title: ${widget.task.title}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Status: ",
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          widget.task.completed ? "Done " : "Not Yet",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: widget.task.completed
                                  ? Colors.green
                                  : Colors.red),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image(
                    image: AssetImage(widget.task.completed
                        ? 'assets/done.jpg'
                        : 'assets/notDone.jfif'),
                    width: 370,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

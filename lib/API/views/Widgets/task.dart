import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_changed/API/models/todo.dart';
import 'package:project_changed/API/views/Pages/taskDetails.dart';

class Task extends StatefulWidget {
  final Todo currentTask;
  final String title;
  final bool completed;
  Task({this.title, this.completed, this.currentTask});
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => TaskDetails(task: widget.currentTask)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(
                widget.completed ? (Icons.check_box) : (Icons.not_interested),
                color: widget.completed ? Colors.green : Colors.red,
              ),
              SizedBox(
                width: 5,
              ),
              Flexible(
                child: Text(
                  widget.title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: widget.completed ? Colors.grey : Colors.red[400],
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

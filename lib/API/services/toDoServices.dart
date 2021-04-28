import 'package:dio/dio.dart';
import 'package:project_changed/API/models/todo.dart';

class ToDoService {
  String url = 'https://jsonplaceholder.typicode.com/todos';
  Future<List<Todo>> getTasks() async {
    List<Todo> tasks = [];
    Response res = await Dio().get(url);

    var data = res.data;
    data.forEach((value) {
      tasks.add(Todo.fromJson(value));
    });
    return tasks;
  }
}

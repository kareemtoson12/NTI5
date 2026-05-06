// Karim Toson || kareemtoson1@gmail.com || Wed May 06 2026 17:36:59

import 'package:dio/dio.dart';
import 'package:nti5/features/todo/models/todo_model.dart';

class ApiServices {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: 'https://jsonplaceholder.typicode.com/',
      connectTimeout: Duration(minutes: 1),
      receiveTimeout: Duration(minutes: 1),
    ),
  );

  Future<List<TodoModel>> getTodos() async {
    List<TodoModel> todos = [];
    try {
      final res = await _dio.get('todos');

      for (var todo in res.data) {
        todos.add(TodoModel.fromJson(todo));
      }

      return todos;
    } catch (e) {
      print(e);
      return [];
    }
  }
}

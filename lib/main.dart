import 'package:nti5/core/data_source/api_services.dart';
import 'package:nti5/features/todo/models/todo_model.dart';

void main() async {
  ApiServices apiServices = ApiServices();
  List<TodoModel> todos = await apiServices.getTodos();
  for (var todo in todos) {
    print(todo.title);
  }
}

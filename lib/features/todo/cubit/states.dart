// Karim Toson || kareemtoson1@gmail.com || Mon Apr 20 2026 17:14:52

// Karim Toson || kareemtoson1@gmail.com || Mon Apr 20 2026 17:15:00

abstract class TodoStates {
  final List<String> todoList;
  TodoStates(this.todoList);
}

class IntitalState extends TodoStates {
  IntitalState(super.todoList);
}

class AddTodoState extends TodoStates {
  AddTodoState(super.todoList);
}

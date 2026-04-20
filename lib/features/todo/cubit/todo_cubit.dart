import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/todo/cubit/states.dart';

class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(IntitalState([]));

  //add todo

  void addTodo(String todoName) {
    final List<String> updatedList = state.todoList;
    updatedList.add(todoName);
    emit(AddTodoState(updatedList));
  }
}

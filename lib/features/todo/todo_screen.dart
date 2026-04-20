// Karim Toson || kareemtoson1@gmail.com || Mon Apr 20 2026 16:21:17

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/todo/cubit/states.dart';
import 'package:nti5/features/todo/cubit/todo_cubit.dart';
import 'package:nti5/features/todo/widgets/todo_widget.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  late TextEditingController todoController;

  @override
  void initState() {
    todoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    todoController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<TodoCubit, TodoStates>(
        listener: (context, state) {
          if (state is AddTodoState) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('sdadsasddsa'),
                backgroundColor: Colors.green,
              ),
            );
          }
        },
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: BlocBuilder<TodoCubit, TodoStates>(
              builder: (context, state) {
                final myCubit = context.read<TodoCubit>();
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: state.todoList.length,
                        itemBuilder: (context, index) {
                          return TodoWidget(todoName: state.todoList[index]);
                        },
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: TextField(
                            controller: todoController,
                            decoration: InputDecoration(
                              hintText: 'Write a task...',
                              fillColor: Colors.grey.withValues(alpha: 0.5),
                              filled: true,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {
                            myCubit.addTodo(todoController.text);
                          },
                          child: Text('add'),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

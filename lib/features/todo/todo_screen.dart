// Karim Toson || kareemtoson1@gmail.com || Mon Apr 20 2026 16:21:17

import 'package:flutter/material.dart';
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TodoWidget(todoName: 'Create icons for a dashboard'),

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
                        border: OutlineInputBorder(borderSide: BorderSide.none),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(onPressed: () {}, child: Text('add')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

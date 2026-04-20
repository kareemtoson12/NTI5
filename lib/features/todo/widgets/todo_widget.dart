// Karim Toson || kareemtoson1@gmail.com || Mon Apr 20 2026 16:40:00

import 'package:flutter/material.dart';

class TodoWidget extends StatelessWidget {
  final String todoName;
  const TodoWidget({super.key, required this.todoName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey.withValues(alpha: 0.5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(todoName, style: TextStyle(fontSize: 20)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
        ],
      ),
    );
  }
}

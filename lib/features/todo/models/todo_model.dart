// Karim Toson || kareemtoson1@gmail.com || Wed May 06 2026 17:19:51

class TodoModel {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  TodoModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  //from json

  factory TodoModel.fromJson(Map<String, dynamic> jsonData) {
    return TodoModel(
      userId: jsonData['userId'],
      id: jsonData['id'],
      title: jsonData['title'],
      completed: jsonData['completed'],
    );
  }
}

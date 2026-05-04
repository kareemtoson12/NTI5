// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:37:37

class Meal {
  final String image;
  final String title;
  final String kcal;
  final String time;
  final String mealType;

  Meal({
    required this.image,
    required this.title,
    required this.kcal,
    required this.time,
    required this.mealType,
  });
  Map<String, dynamic> toJson() {
    return {
      'image': image,
      'title': title,
      'kcal': kcal,
      'time': time,
      'mealType': mealType,
    };
  }

  factory Meal.fromMap(Map<String, dynamic> json) {
    return Meal(
      image: json['imag'],
      kcal: json['kcal'],
      mealType: json['mealType'],
      time: json['time'],
      title: json['title'],
    );
  }
}

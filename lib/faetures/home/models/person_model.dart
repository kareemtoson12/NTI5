// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 16:47:50

import 'package:hive_flutter/adapters.dart';

part 'person_model.g.dart';

@HiveType(typeId: 0)
class PersonModel {
  @HiveField(0)
  final int age;
  @HiveField(1)
  final String name;

  PersonModel({required this.age, required this.name});
}

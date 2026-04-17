// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 19:10:54

abstract class TextFieledStates {
  final String name;

  TextFieledStates({required this.name});
}

class IntialState extends TextFieledStates {
  IntialState({required super.name});
}

class UpdatedName extends TextFieledStates {
  UpdatedName({required super.name});
}

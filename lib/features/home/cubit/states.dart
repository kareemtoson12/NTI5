// Karim Toson || kareemtoson1@gmail.com || Fri Apr 24 2026 16:45:31

abstract class HomeStates {}

class HomeInitial extends HomeStates {
  final int age;

  HomeInitial({required this.age});
}

class SaveState extends HomeStates {}

class DeleteState extends HomeStates {}

class GetState extends HomeStates {
  final int age;

  GetState({required this.age});
}

// Karim Toson || kareemtoson1@gmail.com || Mon May 04 2026 18:42:36

import 'package:nti5/features/home/models/meal.dart';

abstract class HomeStates {}

class HomeInitialState extends HomeStates {}

class HomeLoadingState extends HomeStates {}

class HomeSuccessState extends HomeStates {
  final List<Meal> meals;

  HomeSuccessState(this.meals);
}

class HomeErrorState extends HomeStates {
  final String errorMessage;

  HomeErrorState(this.errorMessage);
}

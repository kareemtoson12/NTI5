// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 16:44:38

import 'package:nti5/faetures/home/models/person_model.dart';

abstract class HomeStates {}

class HomeIntialStates extends HomeStates {
  final PersonModel personModel;

  HomeIntialStates({required this.personModel});
}

class HomeSave extends HomeStates {}

class HomeDelete extends HomeStates {}

class HomeGet extends HomeStates {
  final PersonModel personModel;

  HomeGet({required this.personModel});
}

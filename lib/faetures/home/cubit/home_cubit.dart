// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 16:44:44

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/faetures/home/cubit/states.dart';
import 'package:nti5/faetures/home/models/person_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit()
    : super(HomeIntialStates(personModel: PersonModel(age: 0, name: '')));
}

// Karim Toson || kareemtoson1@gmail.com || Mon Apr 27 2026 16:44:44

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/hive.dart';
import 'package:nti5/faetures/home/cubit/states.dart';
import 'package:nti5/faetures/home/models/person_model.dart';

class HomeCubit extends Cubit<HomeStates> {
  HiveDataSource hiveDataSource = HiveDataSource();
  HomeCubit()
    : super(HomeIntialStates(personModel: PersonModel(age: 0, name: '')));

  //save
  Future<void> savePerson(PersonModel person) async {
    await hiveDataSource.save(person);
    emit(HomeSave());
  }

  //delete
  Future<void> deltePerson() async {
    await hiveDataSource.delete();
    emit(HomeDelete());
  }

  //get

  void getPerson() {
    PersonModel data = hiveDataSource.get();
    emit(HomeGet(personModel: data));
  }
}

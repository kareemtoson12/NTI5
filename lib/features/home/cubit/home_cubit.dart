// Karim Toson || kareemtoson1@gmail.com || Fri Apr 24 2026 16:45:39

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/hive.dart';
import 'package:nti5/features/home/cubit/states.dart';

class HomeCubit extends Cubit<HomeStates> {
  HiveDataSource hiveDataSource = HiveDataSource();
  HomeCubit() : super(HomeInitial(age: 0));
  //save

  Future<void> saveAge(int newAge) async {
    await hiveDataSource.saveAge(newAge);
    emit(SaveState());
  }

  Future<void> deletAge() async {
    hiveDataSource.deleteAge();
    emit(DeleteState());
  }

  void getAge() {
    int age = hiveDataSource.getAge();
    emit(GetState(age: age));
  }
}

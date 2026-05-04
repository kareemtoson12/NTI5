// Karim Toson || kareemtoson1@gmail.com || Mon May 04 2026 18:42:47

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/firebase_data_source.dart';
import 'package:nti5/features/home/cubit/states.dart';
import 'package:nti5/features/home/models/meal.dart';

class HomeCubit extends Cubit<HomeStates> {
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();

  HomeCubit() : super(HomeInitialState());

  List<Meal> meals = [];
  List<Meal> filtedMeals = [];

  //get all date
  Future<void> getData() async {
    emit(HomeLoadingState());

    try {
      meals = await firebaseDataSource.getData();
      emit(HomeSuccessState(meals));
      print(meals);
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }

  //get filterd data

  void getFiltedData(String mealType) {
    emit(HomeLoadingState());
    try {
      filtedMeals = meals.where((mealItem) {
        return mealItem.mealType == mealType;
      }).toList();
      emit(HomeSuccessState(filtedMeals));
    } catch (e) {
      emit(HomeErrorState(e.toString()));
    }
  }
}

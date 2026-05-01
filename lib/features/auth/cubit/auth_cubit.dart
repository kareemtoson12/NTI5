// Karim Toson || kareemtoson1@gmail.com || Fri May 01 2026 09:41:34
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/core/data_source/firebase_data_source.dart';
import 'package:nti5/features/auth/cubit/states.dart';

class AuthCubit extends Cubit<AuthState> {
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  AuthCubit() : super(IntialState());

  //login
  Future<void> login(String email, String password) async {
    emit(LoginLoadingState());

    try {
      await firebaseDataSource.login(email, password);
      emit(LoginSuccessState());
    } catch (e) {
      emit(LoginErrorState(e.toString()));
    }
  }

  //sign up
  Future<void> signUp({
    required String name,
    required String email,
    required String password,
  }) async {
    emit(SignUpLoadingState());

    try {
      await firebaseDataSource.signUp(email, password, name);
      emit(SignUpSuccessState());
    } catch (e) {
      emit(SignUpErrorState(e.toString()));
    }
  }
}

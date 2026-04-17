// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 19:11:07

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/textfieldFeature/cubit/states.dart';

class TextFieldCubit extends Cubit<TextFieledStates> {
  TextFieldCubit() : super(IntialState(name: ''));

  void updateName(String newName) {
    emit(UpdatedName(name: newName));
  }
}

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti5/features/counter/cubit/states.dart';

class CounterCubit extends Cubit<CounterStates> {
  CounterCubit() : super(IntialState(0));

  void increment() {
    emit(IncrementState(state.counterValue + 1));
  }
}

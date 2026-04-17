// Karim Toson || kareemtoson1@gmail.com || Fri Apr 17 2026 16:58:06

abstract class CounterStates {
  final int counterValue;

  CounterStates(this.counterValue);
}

class IntialState extends CounterStates {
  IntialState(super.counterValue);
}

class IncrementState extends CounterStates {
  IncrementState(super.counterValue);
}

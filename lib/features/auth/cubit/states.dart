// Karim Toson || kareemtoson1@gmail.com || Fri May 01 2026 09:41:25

abstract class AuthState {}

class IntialState extends AuthState {}

//login states

class LoginLoadingState extends AuthState {}

class LoginSuccessState extends AuthState {}

class LoginErrorState extends AuthState {
  final String message;
  LoginErrorState(this.message);
}

//sign up

class SignUpLoadingState extends AuthState {}

class SignUpSuccessState extends AuthState {}

class SignUpErrorState extends AuthState {
  final String message;
  SignUpErrorState(this.message);
}

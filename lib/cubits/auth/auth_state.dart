part of 'auth_cubit.dart';

@immutable
abstract class AuthState {}

class AuthInitial extends AuthState {}

class AuthUnAuthenticatedState extends AuthState {}

class AuthLoadingState extends AuthState {}

class AuthErrorState extends AuthState {
  final String errorText;

  AuthErrorState({required this.errorText});
}

class AuthRegisteredState extends AuthState {}



class AuthLoggedState extends AuthState {
  UserModel? userModel;

  AuthLoggedState([this.userModel]);
}
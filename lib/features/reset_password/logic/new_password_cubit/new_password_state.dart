part of 'new_password_cubit.dart';


abstract class NewPasswordState {}

class NewPasswordInitial extends NewPasswordState {}

class NewPasswordLoading extends NewPasswordState {}

class NewPasswordSuccess extends NewPasswordState {}

class NewPasswordFailure extends NewPasswordState {
  final String error;
  NewPasswordFailure(this.error);
}

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import '/core/networking/auth_functions.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  String baseUrl = AuthApi.baseUrl;

  // This function will handle the sign-in logic
  Future<void> signIn(
      BuildContext context, String email, String password) async {
    emit(LoginLoading());
    try {
      Response response = await AuthApi.signInApi(email, password);

      if (response.statusCode == 200) {
        // On success, emit LoginSuccess state
        emit(LoginSuccess());
        // You can navigate to the next page here after a successful login

      } else {
        // Emit failure state with the response data in case of an error
        emit(LoginFailure("Login failed: ${response.data.toString()}"));
      }
    } on DioException catch (e) {
      // Handle Dio errors and emit failure state
      String errorMessage =
          e.response?.data?['message'] ?? e.message ?? 'An error occurred';
      emit(LoginFailure(errorMessage));
    } catch (e) {
      // Handle general errors
      emit(LoginFailure('An unexpected error occurred: $e'));
    }
  }
}

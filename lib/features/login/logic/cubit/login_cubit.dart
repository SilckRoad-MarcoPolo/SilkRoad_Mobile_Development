import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/features/mentor_home/views/bottom_nav_mentor.dart';
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
        emit(LoginSuccess());
        if (email.contains("@example")) {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => BOttomNavMentor()));
        } else {
          Navigator.pushReplacement(context,
              MaterialPageRoute(builder: (context) => BOttomNavigationBar()));
        }
      } else {
        emit(LoginFailure("Login failed: ${response.data.toString()}"));
      }
    } on DioException catch (e) {
      String errorMessage =
          e.response?.data?['message'] ?? e.message ?? 'An error occurred';
      emit(LoginFailure(errorMessage));
    } catch (e) {
      emit(LoginFailure('An unexpected error occurred: $e'));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:silk_road/core/networking/auth_functions.dart';

import '../../../../core/shared_components/BottomNavigationBa.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit() : super(RegisterInitial());

  String baseUrl = "https://silkroadapis-production.up.railway.app/api/v1";

  // This function will handle the sign-up logic
  Future<void> signUp(
      BuildContext context, String firstName, String lastName, String email, String password) async {
    emit(RegisterLoading());
    try {
      Response response = await AuthApi.signUpApi(firstName, lastName, email, password);

      if (response.statusCode! < 300) {
        emit(RegisterSuccess());
        // On success, you can navigate to the next page or login screen
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BOttomNavigationBar()));
      } else {
        emit(RegisterFailure("Signup failed: ${response.data.toString()}"));
      }
    } on DioException catch (e) {
      String errorMessage =
          e.response?.data?['message'] ?? e.message ?? 'An error occurred';
      emit(RegisterFailure(errorMessage));
    } catch (e) {
      emit(RegisterFailure('An unexpected error occurred: $e'));
    }
  }
}

import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silk_road/core/networking/auth_functions.dart';

part 'new_password_state.dart';

class NewPasswordCubit extends Cubit<NewPasswordState> {
  NewPasswordCubit() : super(NewPasswordInitial());

  final String baseUrl = "https://silkroadapis-production.up.railway.app/api/v1";

  void confirmNewPassword(String email, String password, String confirmPassword) async {
    if (password != confirmPassword) {
      emit(NewPasswordFailure('Passwords do not match'));
      return;
    }

    emit(NewPasswordLoading());

    try {
      
      // API call to reset the password
      Response response = await AuthApi.confirmNewPasswordApi(email, password);

      if (response.statusCode == 200) {
        emit(NewPasswordSuccess());
      } else {
        emit(NewPasswordFailure("Password reset failed: ${response.data}"));
      }
    } on DioException catch (e) {
      String errorMessage = e.response?.data?['message'] ?? e.message ?? 'An error occurred';
      emit(NewPasswordFailure(errorMessage));
    } catch (e) {
      emit(NewPasswordFailure("An unexpected error occurred: $e"));
    }
  }
}

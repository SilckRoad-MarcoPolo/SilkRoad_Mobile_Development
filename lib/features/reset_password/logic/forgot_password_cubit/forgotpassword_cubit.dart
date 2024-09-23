import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../view/otp_verification.dart';
import '/core/networking/auth_functions.dart'; // Adjust to your networking file location

part 'forgotpassword_state.dart';

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  ForgotPasswordCubit() : super(ForgotPasswordInitial());

  // Function to handle password reset
  Future<void> sendPasswordResetEmail(
      BuildContext context, String email) async {
    emit(ForgotPasswordLoading());
    try {
      var data = {'email': email.trim()};

      // Assuming AuthApi.forgotPasswordApi handles password reset API call
      Response response = await AuthApi.sendPasswordResetEmailApi(email);

      if (response.statusCode == 200) {
        emit(ForgotPasswordSuccess());
        // Show a success dialog or navigate to OTP verification
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => const OtpVerification(),
          ),
        );
      } else {
        emit(ForgotPasswordFailure("Failed: ${response.data.toString()}"));
      }
    } on DioException catch (e) {
      emit(ForgotPasswordFailure(e.message ?? 'Error occurred during reset'));
    } catch (e) {
      emit(ForgotPasswordFailure('Unexpected error: $e'));
    }
  }
}

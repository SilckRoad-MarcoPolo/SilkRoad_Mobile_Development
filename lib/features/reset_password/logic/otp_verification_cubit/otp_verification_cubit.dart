import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silk_road/core/networking/auth_functions.dart';

part 'otp_verification_state.dart';

class OtpVerificationCubit extends Cubit<OtpVerificationState> {
  OtpVerificationCubit() : super(OtpVerificationInitial());

  final String baseUrl = "https://silkroadapis-production.up.railway.app/api/v1";

  void verifyOtp(String otp) async {
    emit(OtpVerificationLoading());
    try {

      // API call to verify OTP
      Response response = await AuthApi.verifyOtpApi(otp);

      if (response.statusCode == 200) {
        emit(OtpVerificationSuccess());
      } else {
        emit(OtpVerificationFailure("OTP verification failed: ${response.data}"));
      }
    } on DioException catch (e) {
      String errorMessage = e.response?.data?['message'] ?? e.message ?? 'An error occurred';
      emit(OtpVerificationFailure(errorMessage));
    } catch (e) {
      emit(OtpVerificationFailure("An unexpected error occurred: $e"));
    }
  }
}
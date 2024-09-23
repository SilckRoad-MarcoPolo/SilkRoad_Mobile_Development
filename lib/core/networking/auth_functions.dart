import 'package:dio/dio.dart';

class AuthApi {
  static String baseUrl =
      "https://silkroadapis-production.up.railway.app/api/v1";
  static signInApi(String email, String password) async {
    var data = {
      'email': email,
      'password': password,
    };

    Response response = await Dio().post("$baseUrl/auth/login", data: data);
    return response;
  }

  static signUpApi(
      String firstName, String lastName, String email, String password) async {
    var data = {
      'name': "$firstName $lastName",
      'email': email,
      'password': password,
      'confirmPassword': password,
    };

    // Assuming you have a baseUrl and signup endpoint
    Response response = await Dio().post("$baseUrl/auth/signup", data: data);
    return response;
  }

  static sendPasswordResetEmailApi(String email) async {
    var data = {
      'email': email.trim(),
    };

    // Assuming you have a baseUrl and password reset endpoint
    Response response =
        await Dio().post("$baseUrl/auth/forgotpassword", data: data);
    return response;
  }

  static verifyOtpApi(String otp) async {
    var data = {
      'resetCode': otp,
    };

    // Send OTP verification request to server
    Response response = await Dio().post("$baseUrl/auth/verifyOTP", data: data);
    return response;
  }

  static confirmNewPasswordApi(String email, String password) async {
    var data = {
      'email': email,
      'newPassword': password,
    };
    Response response = await Dio().put(
        "https://silkroadapis-production.up.railway.app/api/v1/auth/resetpassword",
        data: data);
    return response;
  }
}

part of 'otp_verification_cubit.dart';

abstract class OtpVerificationState {}

class OtpVerificationInitial extends OtpVerificationState {}

class OtpVerificationLoading extends OtpVerificationState {}

class OtpVerificationSuccess extends OtpVerificationState {}

class OtpVerificationFailure extends OtpVerificationState {
  final String error;
  OtpVerificationFailure(this.error);
}

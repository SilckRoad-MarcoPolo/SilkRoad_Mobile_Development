import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';
import 'package:silk_road/features/reset_password/view/new_password.dart';

import '../../../core/shared_components/widgets/shared_buttons.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({super.key});

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  String _otp = ""; // To store the OTP input

  // This function will handle OTP verification
  void verifyOtp(String otp) {
    if (otp.length == 6) {
      debugPrint("OTP Verified: $otp");
      Navigator.push(context, MaterialPageRoute(builder: (context)=> NewPassword()));

    } else {
      debugPrint("Invalid OTP");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/reset_password/first.png",
                    width: 0.55 * ScreenUtils.screenWidth(context),
                  ),
                  Positioned(
                    top: (60 / 932) * ScreenUtils.screenHeight(context),
                    child: ArrowBackButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: PasswordResetText(
                      title: "Verify OTP",
                      description:
                      "We've sent a One-Time Password (OTP) to your \n"
                          "email. Please enter the 6-digit OTP below to \n"
                          "reset your password.",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: (50 / 932) * ScreenUtils.screenHeight(context),
            ),
            Image.asset(
              "assets/images/reset_password/lock.png",
              width: (92.22 / 430) * ScreenUtils.screenWidth(context),
              height: (75.23 / 932) * ScreenUtils.screenHeight(context),
            ),
            SizedBox(
              height: (32 / 932) * ScreenUtils.screenHeight(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: (16 / 432) * ScreenUtils.screenWidth(context)),
              child: Form(
                key: _formKey, // Form key for validation
                child: Column(
                  children: [
                    OTPTextField(
                      length: 6,
                      width: MediaQuery.of(context).size.width,
                      fieldWidth: 45,
                      style: const TextStyle(fontSize: 17),
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldStyle: FieldStyle.box,
                      onChanged: (pin) {
                        _otp = pin; // Update the OTP value
                      },
                      onCompleted: (pin) {
                        _otp = pin; // Update the OTP value when completed
                      },
                    ),
                    SizedBox(
                      height: (115 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomButton(
                      text: "Verify",
                      onTap: () {
                        if (_otp.length == 6) {
                          // If OTP is 6 digits, handle verification
                          verifyOtp(_otp);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Please enter a valid 6-digit OTP'),
                            ),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';
import 'package:silk_road/features/reset_password/view/otp_verification.dart';

import '../../../core/shared_components/custom_button.dart';
import '../../../core/shared_components/custom_text_field.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TextEditingController _emailController = TextEditingController(); // Email controller

  // This function will handle sending the email for password reset
  void sendPasswordResetEmail(String email) {
    debugPrint("Reset password email sent to: $email");
    // Add your email reset logic here
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
                      title: "Forgot Password?",
                      description:
                      "Enter your email address below, and we'll send \n"
                          "you a One-Time Password (OTP) to reset your \n"
                          "password. If you don't see the email, please\n"
                          "check your spam folder",
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
                child: CustomTextFormField(
                  controller: _emailController, // Email controller
                  hintText: 'Email',
                  validate: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    // You can add additional email validation here
                    return null;
                  },
                ),
              ),
            ),
            SizedBox(
              height: (115 / 932) * ScreenUtils.screenHeight(context),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: (16 / 430) * ScreenUtils.screenWidth(context),
                right: (16 / 430) * ScreenUtils.screenWidth(context),
              ),
              child: CustomButton(
                text: "Send",
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, call the password reset function
                    sendPasswordResetEmail(_emailController.text);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpVerification()));
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';

import '../../../core/shared_components/custom_button.dart';
import '../../../core/shared_components/custom_text_field.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
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
                  child: const ArrowBackButton(),
                ),
                Positioned(
                  bottom: 0,
                  child: PasswordResetText(
                    title: "Forgot Password ?",
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
            padding:  EdgeInsets.symmetric(horizontal: (16/432) * ScreenUtils.screenWidth(context)),
            child: CustomTextFormField(
              hintText: 'Email',
            ),

          ),
          SizedBox(
            height: (115 / 932) * ScreenUtils.screenHeight(context),
          ),
          CustomButton(text: "Send",onTap: (){},),
        ],
      ),
    );
  }
}



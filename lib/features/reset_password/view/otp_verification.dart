import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';

import '../../../core/helpers/screen_utils.dart';
import '../../../core/shared_components/widgets/password_reset_text.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenUtils.screenHeight(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: (60 / 932) * ScreenUtils.screenHeight(context),
              ),
              const ArrowBackButton(),
              PasswordResetText(
                title: "OTP Verification",
                description: "A process of generating a unique code and  \n"
                    "sending it to a user's specified phone number \n"
                    "or email address for verification",
                logo: "assets/images/reset_password/key.png",
              ),
              SizedBox(
                height: (50 / 932) * ScreenUtils.screenHeight(context),
              ),
              Center(
                child: Text("OTP",
                  style: TextStyle(
                    fontSize: (24 / 430) * ScreenUtils.screenWidth(context),
                    fontWeight: FontWeight.w400,
                    color: const Color(0xff37474F)
                  ),
                ),
              ),
              Center(
                child: OTPTextField(
                  length: 6,
                  width: (398 / 430) * ScreenUtils.screenWidth(context),
                  fieldWidth: (35 / 430) * ScreenUtils.screenWidth(context),
                  style: TextStyle(
                      fontSize: (17 / 932) *ScreenUtils.screenHeight(context)
                  ),
                  textFieldAlignment: MainAxisAlignment.spaceAround,
                  fieldStyle: FieldStyle.underline,
                  onCompleted: (pin) {
                    // to be implemented
                  },
                ),

              ),
              SizedBox(
                height: (120 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding:  EdgeInsets.only(
                  left: (16/430) * ScreenUtils.screenWidth(context),
                  right: (16/430) * ScreenUtils.screenWidth(context),
                ),
                child: CustomButton(text: "Send"),
              ),
              const Spacer(),

              Flexible(
                child: Image.asset("assets/images/reset_password/second.png",
                height: (346/ 932) * ScreenUtils.screenHeight(context),
                width: ScreenUtils.screenWidth(context),
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';

import '../../../core/helpers/screen_utils.dart';
import '../../../core/shared_components/widgets/password_reset_text.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';
import '../../register/view/register_page.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

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
              ArrowBackButton(onTap: () {
                Navigator.pop(context);
              }),
              PasswordResetText(
                  title: "New Password",
                  description: "your new password must be different  \n"
                      "from previous used password"),
              SizedBox(
                height: (109 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (16 / 430) * ScreenUtils.screenWidth(context),
                  right: (16 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: CustomTextFormField(
                  obscureText: true,
                  hintText: "Password",
                  suffixIcon: const Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: (56 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (16 / 430) * ScreenUtils.screenWidth(context),
                  right: (16 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: CustomTextFormField(
                    obscureText: true,
                    hintText: "Confirm Password",
                    suffixIcon: const Icon(Icons.visibility_off)),
              ),
              SizedBox(
                height: (72 / 932) * ScreenUtils.screenHeight(context),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/images/reset_password/third.png",
                    height: (385 / 932) * ScreenUtils.screenHeight(context),
                    width: ScreenUtils.screenWidth(context),
                    fit: BoxFit.fitWidth,
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: (22 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: (16 / 430) * ScreenUtils.screenWidth(context),
                          right: (16 / 430) * ScreenUtils.screenWidth(context),
                        ),
                        child: CustomButton(text: "Sign in"),
                      ),
                      Center(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.symmetric(
                              vertical: 8),
                          child: Text(
                            "or",
                            style: TextStyle(
                                fontSize: (20 / 932) *
                                    ScreenUtils.screenHeight(context)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: (16 / 430) * ScreenUtils.screenWidth(context),
                          right: (16 / 430) * ScreenUtils.screenWidth(context),
                        ),
                        child: const GoogleButton(),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an account?",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: (16 / 932) *
                                    ScreenUtils.screenHeight(context)),
                          ),
                          TextButton(
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: (16 / 932) *
                                      ScreenUtils.screenHeight(context)),
                            ),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const RegisterPage()));
                            },
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

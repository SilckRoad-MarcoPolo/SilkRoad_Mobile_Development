import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';

import '../../../core/shared_components/widgets/shared_buttons.dart';

class ChangePasswordPage extends StatelessWidget {
  const ChangePasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.screenWidth(context) * (18 / 462),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtils.screenHeight(context) * (60 / 932),
              ),
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: ArrowBackButton(onTap: () {
                    Navigator.pop(context);
                  })),
              Image.asset('assets/images/Group 481763.png'),
              SizedBox(
                height: ScreenUtils.screenHeight(context) * (62 / 932),
              ),
              CustomTextFormField(
                hintText: 'Current Password',
              ),
              SizedBox(
                height: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
              CustomTextFormField(
                hintText: 'New Password',
              ),
              SizedBox(
                height: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
              CustomTextFormField(
                hintText: 'Confirm Password',
              ),
              SizedBox(
                height: (150 / 932) * ScreenUtils.screenHeight(context),
              ),
              CustomButton(text: 'Confirm')
            ],
          ),
        ),
      ),
    );
  }
}

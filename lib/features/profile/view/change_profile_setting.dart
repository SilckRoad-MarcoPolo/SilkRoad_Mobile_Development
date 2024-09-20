import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/features/profile/widgets/User_picture.dart';
import 'package:silk_road/features/profile/widgets/custom_button.dart';

class ChangeProfileSetting extends StatelessWidget {
  const ChangeProfileSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(
        horizontal: ScreenUtils.screenWidth(context) * (16 / 462),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (90 / 932),
            ),
            UserPicture(
              size: 60,
              width:
                  ScreenUtils.screenHeight(context) * (40.5 / 462), // Set width
              height: ScreenUtils.screenHeight(context) * (40.5 / 932),
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (45 / 932),
            ),
            CustomButtons(),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (40 / 932),
            ),
            CustomTextFormField(
              hintText: 'Dina ',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'Regab ',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'username',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'Phone Number',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'Age',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'E-mail',
            ),
            SizedBox(
              height: (20 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomTextFormField(
              hintText: 'Experience',
            ),
            SizedBox(
              height: (66 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustomButton(text: 'Confirm')
          ],
        ),
      ),
    ));
  }
}

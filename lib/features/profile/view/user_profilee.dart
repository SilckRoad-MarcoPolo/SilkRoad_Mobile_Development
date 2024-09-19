import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/features/profile/widgets/User_picture.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
       padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtils.screenHeight(context) * (16 / 462),
                ),
        child: Column(
          children: [
          
            
          UserPicture(
             width: ScreenUtils.screenHeight(context) * (106 / 462), // Set width
        height: ScreenUtils.screenHeight(context) * (106 / 932),
          ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (50 / 932),
            ),
           CustomTextFormField(
                          hintText: 'Dina Ragab',
                        ),
                        SizedBox(
                          height: (22/ 932) * ScreenUtils.screenHeight(context),
                        ),
                        CustomTextFormField(
                          hintText: 'userName',
                        ),
                        SizedBox(
                          height: (22 / 932) * ScreenUtils.screenHeight(context),
                        ),
                        CustomTextFormField(
                          hintText: 'Phone Number',
                        ),
                        SizedBox(
                          height: (22 / 932) * ScreenUtils.screenHeight(context),
                        ),
                          CustomTextFormField(
                          hintText: 'Age',
                        ),
                        SizedBox(
                          height: (22 / 932) * ScreenUtils.screenHeight(context),
                        ),
                        CustomTextFormField(
                          hintText: 'E-mail',
                        ),
                        SizedBox(
                          height: (22 / 932) * ScreenUtils.screenHeight(context),
                        ),
                        CustomTextFormField(
                          hintText: 'Experience',
                        ),
          ],
        ),
      ),
    );
  }
}
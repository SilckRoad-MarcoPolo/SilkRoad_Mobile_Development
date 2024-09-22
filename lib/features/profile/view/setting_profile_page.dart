import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/profile/view/change_email_page.dart';
import 'package:silk_road/features/profile/view/change_password_page.dart';
import 'package:silk_road/features/profile/widgets/Upload_User_picture.dart';

import 'change_profile_setting.dart';

class SettingProfilePage extends StatelessWidget {
  const SettingProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Column(
        children: [
          UploadUserPicture(),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (32 / 932),
          ),
          Text('Amira shawki',
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (32 / 932),
                  color: Colors.black,
                  fontWeight: FontWeight.w500)),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (34 / 932),
          ),
          ListTile(
            leading: Icon(
              Icons.edit,
              size: 26,
              color: Colors.black,
            ),
            title: Text(
              'Edit Profile',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ChangeProfileSetting()));
            },
          ),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (10 / 932),
          ),
          ListTile(
            leading: Icon(
              Icons.key,
              size: 26,
              color: Colors.black,
            ),
            title: Text(
              'Change Passwprd',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangePasswordPage()));
            },
          ),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (10 / 932),
          ),
          ListTile(
            leading: Icon(
              Icons.email,
              size: 26,
              color: Colors.black,
            ),
            title: Text(
              'Change e-mail',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
              ),
            ),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context)=> ChangeEmailPage()));
            },
          ),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (10 / 932),
          ),
          ListTile(
            leading: Icon(
              Icons.delete_forever,
              size: 26,
              color: Colors.black,
            ),
            title: Text(
              'Delete your account',
              style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.w500,
                fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

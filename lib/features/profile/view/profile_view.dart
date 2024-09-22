import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/profile/view/setting_profile_page.dart';
import 'package:silk_road/features/profile/view/user_profilee.dart';

import '../../../core/shared_components/widgets/shared_buttons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    super.key,
  });

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showUserProfile = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
           SizedBox(
              height: ScreenUtils.screenHeight(context) * (60 / 932),
            ),
          Align(
              alignment: AlignmentDirectional.centerStart,
              child: ArrowBackButton(onTap: (){Navigator.pop(context);})),
          SizedBox(
            height: ScreenUtils.screenHeight(context) * (20 / 932),
          ),
          Container(
            width: (398 / 414) * ScreenUtils.screenWidth(context),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
              ),
              borderRadius: BorderRadius.circular(42),
              color: Colors.white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showUserProfile = true; // Show User Profile on click
                      });
                    },
                    child: Container(
                      height: (40 / 932) * ScreenUtils.screenHeight(context),
                      decoration: BoxDecoration(
                          color: showUserProfile ? Colors.black : Colors.white,
                          borderRadius: BorderRadius.circular(42)),
                      child: Center(
                        child: Text(
                          'User Profile',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                            color: showUserProfile ? Colors.white : Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showUserProfile = false; // Show Settings on click
                      });
                    },
                    child: Container(
                      height: (40 / 932) * ScreenUtils.screenHeight(context),
                      decoration: BoxDecoration(
                          color: showUserProfile ? Colors.white : Colors.black,
                          borderRadius: BorderRadius.circular(42)),
                      child: Center(
                        child: Text(
                          'Settings',
                          style: TextStyle(
                            fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                            color: showUserProfile ? Colors.black : Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        SizedBox(
              height: ScreenUtils.screenHeight(context) * (35 / 932),
            ),
       
         Expanded(
              child: showUserProfile ? UserProfile() :SettingProfilePage() ,
            ),
        ],

      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/features/iq_skills/view/iq_skills.dart';
import 'package:silk_road/features/login/view/login_page.dart';
import 'package:silk_road/features/profile/view/profile_view.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,

        children: [


          Container(
            height: (116 / 932) * ScreenUtils.screenHeight(context),
            decoration: BoxDecoration(
              color: kOrange,
            ),
            child: Padding(
              padding: EdgeInsets.only(
                left: (13 / 414) * ScreenUtils.screenWidth(context), top:
              (46 / 932) * ScreenUtils.screenHeight(context),

              ),
              child: Row(children: [
                Image.asset('assets/images/photo_6008145075550404211_m 4.png'),

                Padding(
                  padding: EdgeInsets.only(
                    left: (13 / 414) * ScreenUtils.screenWidth(context),),
                  child: Text('Navigator', style: TextStyle(color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),),
                ),


              ],),
            ),
          )
          , ListTile(leading: Icon(Icons.person),
            title: Text('Profile Settings',),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },


          ),

          ListTile(
            leading: Icon(Icons.note_alt_rounded),
            title: Text('IQ Test'),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => IqSkills()));
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Icon(Icons.circle, size: 12, color: Colors.red),
            // Notification indicator
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(Icons.message),
            title: Text('Messages'),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(Icons.social_distance),
            title: Text('Community'),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text('Help Center'),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(Icons.question_mark),
            title: Text('Suggestions'),
            onTap: () {
              // Handle tap
            },
          ),
          ListTile(
            leading: Icon(Icons.school),
            title: Text('My Learnings'),
            onTap: () {
              // Handle tap
            },),


          SizedBox(
            height: ScreenUtils.screenHeight(context) * (210 / 932),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: ScreenUtils.screenHeight(context) * (9 / 462),
            ),
            child: CustomButton(text: 'log out', onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context)=> LoginPage()));
            },),
          )

        ],),


    );
  }
}
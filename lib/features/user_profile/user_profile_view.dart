import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/mentor_profile/widgets/mentor_followers.dart';
import 'package:silk_road/features/mentor_profile/widgets/social_media.dart';

class UserProfilePage extends StatelessWidget {
  const UserProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ElAmir Mansour',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
          ),
        ),
      
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.screenWidth(context) * (18 / 462),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MentorFollowers(
              image: 'assets/images/photo_1_2024-09-18_03-10-14 3 (1).png',
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (25 / 932),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: TextStyle(
                      fontSize: ScreenUtils.screenHeight(context) * (20 / 932),
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: ScreenUtils.screenHeight(context) * (8 / 932),
                ),
                Text(
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  "A Python course guide typically serves as a structured roadmap for learning the Python programming language. It outlines the core concepts, syntax, and best practices that form the foundation of Python development.......Read more",
                  style: TextStyle(
                      color: Color(0xff696767),
                      fontSize: ScreenUtils.screenHeight(context) * (13 / 932),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (32 / 932),
            ),
            Text(
              "Achievements",
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (20 / 932),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (8 / 932),
            ),
            Row(
             children: [
               
               
                Image.asset(
                    'assets/images/2.png'),
                Image.asset(
                    'assets/images/3.png'),
                     Image.asset(
                    'assets/images/1.png'),
                Image.asset('assets/images/124196 (1).png')
              ],
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (32 / 932),
            ),
            Text(
              "Related Links",
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (20 / 932),
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: ScreenUtils.screenHeight(context) * (22 / 932),
            ),
            SocialMedia(),
          ],
        ),
      ),
    );
  }
}

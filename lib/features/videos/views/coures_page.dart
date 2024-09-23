import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/features/profile/widgets/User_Picture.dart';
import 'package:silk_road/features/videos/widgets/audio_list.dart';
import 'package:silk_road/features/videos/widgets/descreption_course.dart';
import 'package:silk_road/features/videos/widgets/user_info.dart';

class CouresPage extends StatefulWidget {
  const CouresPage({super.key});

  @override
  State<CouresPage> createState() => _CouresPageState();
}

class _CouresPageState extends State<CouresPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Row(
          children: [
            Image.asset('assets/images/py-removebg-preview 2.png'),
            SizedBox(
              width: (9 / 414) * ScreenUtils.screenWidth(context),
            ),
            Text(
              "Python Basics",
              style: TextStyle(
                  fontSize: (22 / 932) * ScreenUtils.screenHeight(context),
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
        actions: [
          UserPicture(
            size: 22,
            width: ScreenUtils.screenHeight(context) * (35 / 462), // Set width
            height: ScreenUtils.screenHeight(context) * (35 / 932),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtils.screenWidth(context) * (18 / 462),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: ScreenUtils.screenHeight(context) * (30 / 932),
                  ),
                  UserInfo(rating: 4),
                  SizedBox(
                    height: ScreenUtils.screenHeight(context) * (19 / 932),
                  ),
                  Descreption(),
                  SizedBox(
                    height: (17 / 932) * ScreenUtils.screenHeight(context),
                  ),
                  Text(
                    "33 Lessons",
                    style: TextStyle(
                        fontSize:
                            (20 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    height: (18 / 932) * ScreenUtils.screenHeight(context),
                  ),
                ],
              ),
            ),
            CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [
                SliverPadding(
                    padding: EdgeInsets.symmetric(
                      horizontal:
                          ScreenUtils.screenHeight(context) * (12 / 462),
                    ),
                    sliver: Audio_List())
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            left: ScreenUtils.screenWidth(context) * (16 / 462),
            right: ScreenUtils.screenWidth(context) * (16 / 462),
            bottom: ScreenUtils.screenWidth(context) * (6 / 462)),
        child: CustomButton(text: 'Enroll Course Now'),
      ),
    );
  }
}

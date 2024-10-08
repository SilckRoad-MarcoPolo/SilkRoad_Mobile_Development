import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/ai_page/view/career_match_page.dart';
import 'package:silk_road/features/home/widgets/card_tracks.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';
import 'package:silk_road/features/home/widgets/custom_appBar.dart';
import 'package:silk_road/features/home/widgets/nav_Bar.dart';
import 'package:silk_road/features/home/widgets/trending_course_list.dart';
import 'package:silk_road/features/iq_skills/view/iq_skills.dart';
import 'package:silk_road/features/streak_screen/view/streak_screen.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.screenHeight(context) * (12 / 462),
        ),
        child: SingleChildScrollView(
          child: Column(children: [
            customAppBar(
              title: 'Welcome',
              subtile: 'navigator',
              actions: [
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StreakScreen()));
                    },
                    child: Image.asset('assets/images/Group 481506.png'))
              ],
            ),
            SizedBox(
              height: (26 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustOmSearch(),
            SizedBox(
              height: (26 / 932) * ScreenUtils.screenHeight(context),
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CareerMatchPage()));
                },
                child: Image.asset('assets/images/Group 481720.png')),

            SizedBox(
              height: (37 / 932) * ScreenUtils.screenHeight(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'IQ Skills',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => IqSkills()));
                    },
                    child: Text(
                      'more >',
                      style: TextStyle(color: kOrange, fontSize: 14),
                    ))
              ],
            ),
            SizedBox(
              height: (16 / 932) * ScreenUtils.screenHeight(context),
            ),
            ListOfTracks(),
            // ListOfTracks(),
            SizedBox(
              height: (37 / 932) * ScreenUtils.screenHeight(context),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trendings Courses',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TrendingCourses()));
                    },
                    child: Text(
                      'more >',
                      style: TextStyle(color: kOrange, fontSize: 14),
                    ))
              ],
            ),
            // TrendingCourseList(),
            CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [TrendingCourseList()],
            )
          ]),
        ),
      ),
    );
  }
}

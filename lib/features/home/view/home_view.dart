import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/home/widgets/card_tracks.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';
import 'package:silk_road/features/home/widgets/custom_appBar.dart';
import 'package:silk_road/features/home/widgets/nav_Bar.dart';
import 'package:silk_road/features/home/widgets/trending_course_list.dart';

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
            customAppBar(),
            SizedBox(
              height: (26 / 932) * ScreenUtils.screenHeight(context),
            ),
            CustOmSearch(),
            SizedBox(
              height: (26 / 932) * ScreenUtils.screenHeight(context),
            ),
            Image.asset('assets/images/Group 481720.png'),
          
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
                    onPressed: () {},
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Trendings Courses',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'more >',
                      style: TextStyle(color: kOrange, fontSize: 14),
                    ))
              ],
            ),
             SizedBox(
              height: (21 / 932) * ScreenUtils.screenHeight(context),
            ),
            // TrendingCourseList(),
             CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [
                
                  CustomScrollView(
              // shrinkWrap: true,
              // physics: NeverScrollableScrollPhysics(),
              slivers: [
                
                
                  TrendingCourseList()
               
              ],
            )
                
              ],
           )

          ]),
        ),
      ),
    );
  }
}

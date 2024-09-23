import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/mentor_profile/views/mentor_profile_page.dart';

class UserInfo extends StatefulWidget {
  final double rating;
  const UserInfo({super.key, required this.rating});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  @override
  late double rating;

  @override
  void initState() {
    super.initState();
    rating = widget.rating; // Set the initial rating value
  }

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
          width: ScreenUtils.screenHeight(context) * (398 / 462), // Set width
          height: ScreenUtils.screenHeight(context) * (155 / 932),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 2),
            borderRadius: BorderRadius.circular(12),
            color: Colors.white,
          ),
          child: Padding(
              padding: EdgeInsets.all(
                (13 / 932) * ScreenUtils.screenHeight(context),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ahmed Magdy",
                      style: TextStyle(
                          fontSize:
                              ScreenUtils.screenHeight(context) * (20 / 932),
                          fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "Backend Developer",
                      style: TextStyle(
                          fontSize:
                              ScreenUtils.screenHeight(context) * (16 / 932),
                          fontWeight: FontWeight.w500,
                          color: Color(0xff939393)),
                    ),
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 15,
                      glow: false,
                      initialRating: rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 4,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                      itemBuilder: (context, _) => Icon(
                        size: (15 / 932) * ScreenUtils.screenHeight(context),
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (newRating) {
                        setState(() {
                          // rating = newRating;
                        });
                      },
                    ),
                    SizedBox(
                      height: (24 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MentorProfilePage()));
                      },
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: (8 / 414) * ScreenUtils.screenWidth(context)),
                        child: Container(
                          height:
                              (30 / 932) * ScreenUtils.screenHeight(context),
                          width: (115 / 414) * ScreenUtils.screenWidth(context),
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(12)),
                          child: Center(
                            child: Text(
                              'View Profile',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: (14 / 932) *
                                    ScreenUtils.screenHeight(context),
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]))),
      Positioned(
        right: 16,
        bottom: 1,
        child: Image.asset('assets/images/person.png'),
      ),
    ]);
  }
}

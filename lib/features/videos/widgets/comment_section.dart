import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/profile/widgets/User_Picture.dart';

class CommentSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: ScreenUtils.screenHeight(context) * (30 / 932),
          width: ScreenUtils.screenWidth(context) * (125 / 430),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: Colors.grey[200]),
          child: Center(
            child: Row(
              children: [
                Icon(Icons.thumb_up_alt_outlined, color: Color(0xff37474F)),
                Divider(
                  thickness: 20,
                  height: 5,
                  color: Color(0xffA2A2A2),
                ),
                SizedBox(width: ScreenUtils.screenWidth(context) * (3 / 430)),
                Text("77", style: TextStyle(color: Color(0xff37474F))),
                SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 430)),
                //  Text(".", style: TextStyle(fontSize: 25, color: Color(0xff37474F))),

                Divider(
                  height: ScreenUtils.screenHeight(context) * (15 / 932),
                  color: Color(0xffA2A2A2),
                ),
                Icon(Icons.thumb_down_alt_outlined, color: Color(0xff37474F)),
                Divider(
                  height: ScreenUtils.screenHeight(context) * (15 / 932),
                  color: Color(0xffA2A2A2),
                ),
                SizedBox(width: ScreenUtils.screenWidth(context) * (5 / 430)),
                Text("9", style: TextStyle(color: Color(0xff37474F))),
              ],
            ),
          ),
        ),
        SizedBox(height: (16 / 932) * ScreenUtils.screenHeight(context)),
        // Comment Section
        Container(
          width: ScreenUtils.screenHeight(context) * (398 / 462), // Set width
          // height: ScreenUtils.screenHeight(context) * (89 / 932),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(11), color: Colors.grey[200]),
          child: Padding(
            padding: EdgeInsets.only(
                left: ScreenUtils.screenHeight(context) * (12 / 462),
                right: ScreenUtils.screenHeight(context) * (21 / 462),
                top: ScreenUtils.screenHeight(context) * (13 / 932),
                bottom: ScreenUtils.screenHeight(context) * (14 / 932)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Comments 300",
                  style: TextStyle(
                      fontSize: ScreenUtils.screenHeight(context) * (14 / 932),
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  children: [
                    UserPicture(
                      size: 22,
                      width: ScreenUtils.screenHeight(context) *
                          (35 / 462), // Set width
                      height: ScreenUtils.screenHeight(context) * (35 / 932),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: Container(
                        width: ScreenUtils.screenHeight(context) *
                            (336 / 462), // Set width
                        height: ScreenUtils.screenHeight(context) * (17 / 932),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Add a comment...",
                            hintStyle: TextStyle(fontSize: 10),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: (16 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

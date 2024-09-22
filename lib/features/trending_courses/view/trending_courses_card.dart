import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/course_content/view/course_content.dart';

class TrendingCoursesCard extends StatelessWidget {
   TrendingCoursesCard({
    super.key,
    required this.course,required this.borderColor,this.ontap
  });
  VoidCallback? ontap  ;


  final Map<String, dynamic> course;

  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: (5 / 430) * ScreenUtils.screenWidth(context)),
        child: (Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side:  BorderSide(
              color: borderColor,
              width: 1, // Border width
            ),
          ),
          elevation: 0,
          child: Stack(
            children: [
              ListTile(
                contentPadding: EdgeInsetsDirectional.symmetric(
                    horizontal: (5 / 430) * ScreenUtils.screenWidth(context),
                    vertical: (10 / 932) * ScreenUtils.screenHeight(context)),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/onboarding/second.png',
                    // Replace with your image path
                    width: (117 / 430) * ScreenUtils.screenWidth(context),
                    height: (74 / 932) * ScreenUtils.screenHeight(context),
                    fit: BoxFit.cover,
                  ),
                ),
                title: Text(
                  course['name'],
                  style: TextStyle(
                    fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff3F3F3F),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      course['instructor'],
                      style: TextStyle(
                        fontSize: (15 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w400,
                        color: const Color.fromARGB(125, 0, 0, 0),
                      ),
                    ),
                    Text(
                      course['hours'],
                      style: TextStyle(
                        fontSize: (11 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w500,
                        color: const Color.fromARGB(125, 0, 0, 0),
                      ),
                    ),
                  ],
                ),
              ),
              // Manually position the menu button in the top right
              Positioned(
                top: 8,
                right: 8,
                child: IconButton(
                  icon: Icon(Icons.more_vert),
                  onPressed: () {
                    // Define the action for the menu button
                  },
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}

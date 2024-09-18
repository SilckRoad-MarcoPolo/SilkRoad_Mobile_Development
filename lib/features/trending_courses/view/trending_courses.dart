import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class TrendingCourses extends StatelessWidget {
  // Sample list of course data
  final List<Map<String, dynamic>> courses = [{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },{
    'name': 'Data Analysis',
    'instructor': 'Jhon Doe',
    'hours': '37/40 hrs',
    'progress': 80,
    'image': 'assets/data_analysis.png',
  },
  ];

  TrendingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            GradiantColorHeader(title: "Trending Courses",),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  var course = courses[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: (Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                        side: BorderSide(
                          color: Colors.grey.withOpacity(0.5), // Adding border color
                          width: 1, // Border width
                        ),
                      ),
                      elevation: 0,
                      child: Stack(
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.fromLTRB(5, 10, 5, 10),
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.asset(
                                'assets/images/onboarding/second.png', // Replace with your image path
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
                    )

                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}



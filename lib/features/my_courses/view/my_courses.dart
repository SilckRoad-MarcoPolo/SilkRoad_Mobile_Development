import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class MyCourses extends StatelessWidget {
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

  MyCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          children: [
            GradiantColorHeader(title: "My Courses",),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  var course = courses[index];
                  return (Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    elevation: 0,
                    color: Colors.transparent,
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          'assets/images/onboarding/second.png',
                          // Replace with your image path
                          width:
                              (117 / 430) * ScreenUtils.screenWidth(context),
                          height:
                              (74 / 932) * ScreenUtils.screenHeight(context),
                          fit: BoxFit.cover,
                        ),
                      ),
                      title: Text(course['name'],
                      style: TextStyle(
                        fontSize: (18/ 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff3F3F3F)

                      ),),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(course['instructor'],
                            style: TextStyle(
                                fontSize: (15/ 932) * ScreenUtils.screenHeight(context),
                                fontWeight: FontWeight.w400,
                                color: const Color.fromARGB(125, 0, 0, 0)

                            ),
                          ),
                          Text(course['hours'],
                            style: TextStyle(
                                fontSize: (11/ 932) * ScreenUtils.screenHeight(context),
                                fontWeight: FontWeight.w500,
                                color: const Color.fromARGB(125, 0, 0, 0)

                            ),),
                        ],
                      ),
                      trailing: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          // Circular progress indicator for percentage
                          Stack(
                            alignment: Alignment.center,
                            children: [
                              SizedBox(
                                width: (50/ 432) * ScreenUtils.screenWidth(context),
                                height: (50/ 432) * ScreenUtils.screenWidth(context),
                                child: CircularProgressIndicator(
                                  value: course['progress'] / 100,
                                  // Progress value between 0 and 1
                                  strokeWidth: 3,
                                  backgroundColor: Colors.orangeAccent,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                          Colors.black),
                                ),
                              ),
                              Text(
                                '${course['progress']}%',
                                style:  TextStyle(
                                  fontSize: (12/ 932) * ScreenUtils.screenHeight(context),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ));
                }),
          ],
        ),
      );
  }
}



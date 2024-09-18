import 'package:flutter/material.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class TrendingCourses extends StatelessWidget {
  // Sample list of course data
  final List<Map<String, dynamic>> courses = [
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
      'name': 'Data Analysis',
      'instructor': 'Jhon Doe',
      'hours': '37/40 hrs',
      'progress': 80,
      'image': 'assets/data_analysis.png',
    },
    {
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
            GradiantColorHeader(
              title: "Trending Courses",
              button: true,
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  var course = courses[index];
                  return TrendingCoursesCard(course: course);
                }),
          ],
        ),
      ),
    );
  }
}

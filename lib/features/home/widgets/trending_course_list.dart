import 'package:flutter/material.dart';
import 'package:silk_road/features/course_content/view/course_content.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

class TrendingCourseList extends StatelessWidget {
  TrendingCourseList({super.key});
  final List<Map<String, dynamic>> courses = [
    {
      "name": "Adobe",
      "instructor": "Jane Smith",
      "hours": "15/20 hrs",
      "progress": 75,
      "image": "assets/images/trending/adobe.png"
    },
    {
      "name": "Bootstrap",
      "instructor": "David Lee",
      "hours": "10/15 hrs",
      "progress": 67,
      "image": "assets/images/trending/bootstrap.png"
    },
    {
      "name": "Data Analysis",
      "instructor": "Emily Clark",
      "hours": "37/40 hrs",
      "progress": 92,
      "image": "assets/images/trending/data_analysis.png"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: courses.length,
            (BuildContext context, int index) {
      var course = courses[index];
      return TrendingCoursesCard(
        course: course,
        borderColor: Color(0xffB27743),
        ontap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => CourseContent()));
        },
      );
    }));
  }
}

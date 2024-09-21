import 'package:flutter/material.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

class TrendingCourseList extends StatelessWidget {
  TrendingCourseList({super.key});
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
    },];

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //    shrinkWrap: true,
    //             physics: const NeverScrollableScrollPhysics(),
    //             itemCount: courses.length,
    //   itemBuilder: (BuildContext,index){
    //   var course = courses[index];
    //   return TrendingCoursesCard(course: course);
    // });
     return

    SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10,
            (BuildContext context,int index) {
              var course = courses[index];
     return TrendingCoursesCard(course: course);
        
    }));
  }
}
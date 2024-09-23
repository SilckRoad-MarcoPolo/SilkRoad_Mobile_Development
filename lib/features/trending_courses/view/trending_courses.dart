import 'package:flutter/material.dart';
import 'package:silk_road/features/course_content/view/course_content.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class TrendingCourses extends StatelessWidget {
  // Sample list of course data
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
    {
      "name": "Django",
      "instructor": "Michael Johnson",
      "hours": "25/30 hrs",
      "progress": 83,
      "image": "assets/images/trending/django.png"
    },
    {
      "name": "Full Stack",
      "instructor": "Sophia Garcia",
      "hours": "18/25 hrs",
      "progress": 72,
      "image": "assets/images/trending/full_stack.png"
    },
    {
      "name": "MERN",
      "instructor": "Chris Evans",
      "hours": "12/20 hrs",
      "progress": 60,
      "image": "assets/images/trending/mern.png"
    },
    {
      "name": "Next.js",
      "instructor": "Sarah Connor",
      "hours": "5/10 hrs",
      "progress": 50,
      "image": "assets/images/trending/next_js.png"
    },
    {
      "name": "Python",
      "instructor": "Robert Brown",
      "hours": "30/35 hrs",
      "progress": 85,
      "image": "assets/images/trending/python.png"
    },
    {
      "name": "React",
      "instructor": "Laura Wilson",
      "hours": "22/28 hrs",
      "progress": 79,
      "image": "assets/images/trending/react.png"
    }
  ];

  TrendingCourses({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GradiantColorHeader(
              title: "Trending Courses",
              icon: true,
              function: () {
                Navigator.pop(context);
              },
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  var course = courses[index];
                  return TrendingCoursesCard(
                    course: course,
                    borderColor: Color(0xffB27743),
                    ontap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CourseContent()));
                    },
                  );
                },
                childCount: courses.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

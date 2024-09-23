import 'package:flutter/material.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses_card.dart';

import '../../../core/shared_components/widgets/gradiant_color_header.dart';
import '../../videos/views/coures_page.dart';

class CourseContent extends StatelessWidget {
  // Sample list of course data
  final List<Map<String, dynamic>> courses = [
    {
      'name': 'Python Basics',
      'instructor': 'Emily Brown',
      'hours': '30/40 hrs',
      'progress': 75,
      'image': 'assets/images/trending/python.png',
    },
    {
      'name': 'React Development',
      'instructor': 'Michael Johnson',
      'hours': '28/40 hrs',
      'progress': 70,
      'image': 'assets/images/trending/react.png',
    },
    {
      'name': 'Docker for Beginners',
      'instructor': 'Sarah White',
      'hours': '35/40 hrs',
      'progress': 88,
      'image': 'assets/images/trending/docker.png',
    },
    {
      'name': 'Next.js Masterclass',
      'instructor': 'David Green',
      'hours': '32/40 hrs',
      'progress': 80,
      'image': 'assets/images/trending/next_js.png',
    },
    {
      'name': 'Full Stack Development',
      'instructor': 'Lucas Harris',
      'hours': '27/40 hrs',
      'progress': 67,
      'image': 'assets/images/trending/full_stack.png',
    },
    {
      'name': 'Django Web Framework',
      'instructor': 'Olivia Scott',
      'hours': '37/40 hrs',
      'progress': 92,
      'image': 'assets/images/trending/django.png',
    },
    {
      'name': 'Figma Design Fundamentals',
      'instructor': 'Sophia Williams',
      'hours': '40/40 hrs',
      'progress': 100,
      'image': 'assets/images/trending/figma.png',
    },
  ];



  CourseContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GradiantColorHeader(
              title: "Python Course",
              icon: true,
              function: (){Navigator.pop(context);},
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) {
                  var course = courses[index];
                  return TrendingCoursesCard(course: course,borderColor: Color(
                      0xb3c4c4c4),ontap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CouresPage()));
                  },);
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

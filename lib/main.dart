import 'package:flutter/material.dart';


import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/features/course_content/view/course_content.dart';

import 'package:silk_road/features/on_boarding/view/on_boarding.dart';
import 'package:silk_road/features/reset_password/view/new_password.dart';
import 'package:silk_road/features/trending_courses/view/trending_courses.dart';

import 'features/iq_skills/view/iq_skills.dart';
import 'features/mentor_home/views/bottom_nav_mentor.dart';






void main() {
  runApp(const SilkRoad());
}

class SilkRoad extends StatelessWidget {
  const SilkRoad({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(

            // fontFamily:'Rubik'

            ),
        debugShowCheckedModeBanner: false,

        home:BOttomNavigationBar(),







    );

        
  }
}

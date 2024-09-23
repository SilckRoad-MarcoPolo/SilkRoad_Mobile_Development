import 'package:flutter/material.dart';
import 'package:silk_road/features/Appointments_mentor/view/appointments.dart';




import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/features/my_courses/view/my_courses.dart';
import 'package:silk_road/features/on_boarding/view/on_boarding.dart';




import 'features/mentor_home/views/bottom_nav_mentor.dart';
import 'features/streak_screen/view/streak_screen.dart';







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


    
        home:OnBoarding()







    );

        
  }
}

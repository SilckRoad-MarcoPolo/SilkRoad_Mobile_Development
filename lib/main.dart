import 'package:flutter/material.dart';
import 'package:silk_road/features/mentor_home/views/bottom_nav_mentor.dart';

import 'package:silk_road/features/on_boarding/view/on_boarding.dart';

import 'features/Mentor Ship/views/Mentor_Ship.dart';

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
        home: OnBoarding()
        //zeyad@example.com
        //74108520

        );
  }
}

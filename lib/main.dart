import 'package:flutter/material.dart';
import 'package:silk_road/features/user_profile/user_profile_view.dart';





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


        home:UserProfilePage()
    );

        
  }
}

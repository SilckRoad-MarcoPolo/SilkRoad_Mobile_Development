import 'package:flutter/material.dart';
import 'package:silk_road/features/my_courses/view/my_courses.dart';
import 'package:silk_road/features/register/view/register_page.dart';
import 'package:silk_road/features/login/view/login_page.dart';
import 'package:silk_road/features/on_boarding/view/on_boarding.dart';
import 'package:silk_road/features/reset_password/view/forgot_password.dart';
import 'package:silk_road/features/reset_password/view/new_password.dart';
import 'features/appointments/view/appointments.dart';
import 'features/reset_password/view/otp_verification.dart';
import 'features/trending_courses/view/trending_courses.dart';
import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/features/profile/view/change_email_page.dart';



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

        home:ChangeEmailPage() ,);

  }
}

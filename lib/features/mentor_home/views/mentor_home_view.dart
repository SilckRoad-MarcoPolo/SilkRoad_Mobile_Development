import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/Appointments_mentor/view/appointments.dart';
import 'package:silk_road/features/Students/views/Students_page.dart';
import 'package:silk_road/features/appointments/view/appointment_card.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';
import 'package:silk_road/features/home/widgets/custom_appBar.dart';
import 'package:silk_road/features/mentor_home/widgets/Drawer_mentor.dart';
import 'package:silk_road/features/mentor_home/widgets/services.dart';
import 'package:silk_road/features/mentor_home/widgets/students.dart';

class MentorHomeView extends StatelessWidget {
  const MentorHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer: DrawerMentor(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             
         Padding(
        padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtils.screenHeight(context) * (12 / 462),
                  ),
           child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               
               customAppBar(
                title: 'Welcome',
                subtile: 'Zeyad',
                actions: [
                  CircleAvatar(
                      radius: ScreenUtils.screenHeight(context) * (22 / 932),
                      backgroundColor: Color(0xffD9D9D9),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.notifications,
                            color: Colors.black,
                          )))
                ],
              ),
               SizedBox(
                height: ScreenUtils.screenHeight(context) * (18 / 932),
              ),
              
              CustOmSearch(),
              SizedBox(
                height: ScreenUtils.screenHeight(context) * (20 / 932),
              ),
              Text(
                "Services",
                style: TextStyle(
                    fontSize: (22 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                height: ScreenUtils.screenHeight(context) * (10 / 932),
              ),
              Services(),
                 SizedBox(
                height: ScreenUtils.screenHeight(context) * (20 / 932),
              ),
               
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Upcoming Appointments',
                      style: TextStyle(fontSize:(22 / 932) * ScreenUtils.screenHeight(context), fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed:
                              (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> AppointmentsMentor()));

                        },
                        child: Text(
                          'more >',
                          style: TextStyle(color: kOrange, fontSize: (14 / 932) * ScreenUtils.screenHeight(context)),
                        ))
                  ],
                ),
            
           ],),
        
           
         ),
        AppointmentCard(
          dialog: false,
              text1: 'Complete',
                          text2: 'Reschedule',
              instructorInfo:{
                 'name': 'Nour Ehab',
                 'id': '#DR4546F',
                 'photo': 'assets/images/temp_profile_photo.png',
                 'date': 'may 25, 2024 - 10:00 AM'
              } ,),
               SizedBox(
                height: ScreenUtils.screenHeight(context) * (5 / 932),
              ),
        
         Padding(
          padding: EdgeInsets.symmetric(
                    horizontal: ScreenUtils.screenHeight(context) * (12 / 462),
                  ),
           child: Column(children: [ 
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Students',
                      style: TextStyle(fontSize:(18 / 932) * ScreenUtils.screenHeight(context), fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> StudentsPage()));
                        },
                        child: Text(
                          'more >',
                          style: TextStyle(color: kOrange, fontSize: (14 / 932) * ScreenUtils.screenHeight(context)),
                        ))
                  ],
                ),
           Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Students(name: "Amira Shawki",),
              Students(name: "ElAmir Mansour",)
           ],)],),
         )
          ],
        ),
      ),
    );
  }
}

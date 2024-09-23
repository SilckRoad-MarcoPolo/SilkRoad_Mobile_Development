import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

import 'appointment_card.dart';

class Appointments extends StatefulWidget {
  const Appointments({super.key});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  int selectedIndex = 0;
  List<Map<String, String>> appointmentsListUpcoming = [
    {
      'name': 'Nour Ehab',
      'id': '#DR8392C',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'August 12, 2024 - 09:30 AM',
    },
    {
      'name': 'Hassan Marie',
      'id': '#DR9394F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'June 20, 2024 - 11:00 AM',
    },
    {
      'name': 'Sofian Khaled',
      'id': '#DR7632A',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'September 02, 2024 - 02:00 PM',
    },
    {
      'name': 'Mohammed Emad',
      'id': '#DR4589D',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'October 15, 2024 - 08:00 AM',
    },
    {
      'name': 'Mahmoud Khaled',
      'id': '#DR2290T',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'July 10, 2024 - 04:00 PM',
    },
  ];
  List<Map<String, String>> appointmentsListCompleted = [
    {
      'name': 'Mohammed Aziz',
      'id': '#DR9438G',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'November 18, 2024 - 12:00 PM',
    },
    {
      'name': 'Hassan Marie',
      'id': '#DR3874M',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'May 22, 2024 - 03:30 PM',
    },
    {
      'name': 'Sofian Khaled',
      'id': '#DR8329N',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'September 29, 2024 - 01:00 PM',
    },
    {
      'name': 'Mohammed Emad',
      'id': '#DR5720P',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'December 03, 2024 - 10:00 AM',
    },
    {
      'name': 'Mahmoud Khaled',
      'id': '#DR1039V',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'August 21, 2024 - 09:00 AM',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: ArrowBackButton(onTap: () {}),
        title: Text(
          "Appointments",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: (24 / 932) * ScreenUtils.screenHeight(context)),
        ),
        titleSpacing: ((20 / 430) * ScreenUtils.screenWidth(context)),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  _buildToggleButton("Upcoming", 0),
                  _buildToggleButton("Completed", 1),
                ],
              ),
            ),
            selectedIndex == 0
                ? ListView.builder(
                    itemCount: appointmentsListUpcoming.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (ctx, index) {
                      return (AppointmentCard(
                        text1: 'Message',
                        text2: 'Review',
                        instructorInfo: appointmentsListUpcoming[index],
                      ));
                    })
                : ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: appointmentsListCompleted.length,
                    shrinkWrap: true,
                    itemBuilder: (ctx, index) {
                      return (AppointmentCard(
                        text1: 'Message',
                        text2: 'Review',
                        instructorInfo: appointmentsListCompleted[index],
                      ));
                    })
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton(String text, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
                color: const Color(0xff666666),
                fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                fontSize: (18 / 932) * ScreenUtils.screenHeight(context)),
          ),
          const SizedBox(height: 4), // Space between text and underline
          Container(
            height: (3 / 932) * ScreenUtils.screenHeight(context),
            width: (187 / 430) * ScreenUtils.screenWidth(context),
            decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xffD89A46)
                    : const Color(0xffC4C4C4),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            // Bottom underline
          ),
        ],
      ),
    );
  }
}

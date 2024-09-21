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
  List<Map<String, String>> appointments = [
    {
      'name': 'Nour Ehab',
      'id': '#DR4546F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'July 25, 2024 - 10:00 AM'
    },
    {
      'name': 'Nour Ehab',
      'id': '#DR4546F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'may 25, 2024 - 10:00 AM'
    },
    {
      'name': 'Nour Ehab',
      'id': '#DR4546F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'July 25, 2024 - 10:00 AM'
    },
    {
      'name': 'Nour Ehab',
      'id': '#DR4546F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'July 25, 2024 - 10:00 AM'
    },
    {
      'name': 'Nour Ehab',
      'id': '#DR4546F',
      'photo': 'assets/images/temp_profile_photo.png',
      'date': 'July 25, 2024 - 10:00 AM'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: ArrowBackButton(onTap: () {}),
        title: Text(
          "Appointments",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: (24 / 932) * ScreenUtils.screenHeight(context)),
        ),
        titleSpacing: -((10 / 430) * ScreenUtils.screenWidth(context)),
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
              itemCount: appointments.length,
              shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (ctx, index) {
                    return (AppointmentCard(
                      text1: 'Message',
                      text2: 'Review',
                      instructorInfo: appointments[index],
                    ));
                  })
                : ListView.builder(
              physics: NeverScrollableScrollPhysics(),
                itemCount: appointments.length,
                shrinkWrap: true,
                itemBuilder: (ctx, index) {
                    return (AppointmentCard(
                      text1: 'Message',
                      text2: 'Review',
                      instructorInfo: appointments[1],
                    ));
                  })
          ],
        ),
      ),
    );
  }

  Widget _buildToggleButton(String text, int index ) {
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


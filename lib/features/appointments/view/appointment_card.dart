import 'package:flutter/material.dart';
import 'package:silk_road/features/appointments/view/show_review_dialog.dart';

import '../../../core/helpers/screen_utils.dart';

class AppointmentCard extends StatelessWidget {
  Map<String, String> instructorInfo;
  final String text1, text2;
  bool? dialog;

  AppointmentCard(
      {super.key,
      required this.instructorInfo,
      required this.text1,
      required this.text2,
      this.dialog = true});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.symmetric(
          horizontal: (8 / 430) * ScreenUtils.screenWidth(context)),
      child: Card(
        color: Colors.white,
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Date and Time
              Text(
                instructorInfo['date']!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: (15 / 932) * ScreenUtils.screenHeight(context),
                  color: const Color(0xff404040),
                ),
              ),
              SizedBox(height: (12 / 932) * ScreenUtils.screenHeight(context)),
              const Divider(
                color: Color(0xffD9D9D9),
              ),
              // Row containing image and text details
              Row(
                children: [
                  // Profile Image
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      instructorInfo['photo']!, // Placeholder image URL
                      width: (80 / 430) * ScreenUtils.screenWidth(context),
                      height: (85 / 430) * ScreenUtils.screenWidth(context),
                    ),
                  ),
                  SizedBox(
                      width: (12 / 430) * ScreenUtils.screenWidth(context)),

                  // Appointment details
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          instructorInfo['name']!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize:
                                (17 / 932) * ScreenUtils.screenHeight(context),
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                            height:
                                (17 / 932) * ScreenUtils.screenHeight(context)),
                        RichText(
                          text: TextSpan(
                            text: 'Booking ID: ',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: (17 / 932) *
                                    ScreenUtils.screenHeight(context)),
                            children: <TextSpan>[
                              TextSpan(
                                text: instructorInfo['id']!,
                                style: TextStyle(
                                    color: const Color(0xffD89A46),
                                    fontWeight: FontWeight.bold,
                                    fontSize: (17 / 932) *
                                        ScreenUtils.screenHeight(context)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Divider(
                color: Color(0xffD9D9D9),
              ),

              const SizedBox(height: 12),

              // Message and Review buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Message Button
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 12),
                      side: const BorderSide(color: Colors.black, width: 1.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      // Add action here
                    },
                    child: Text(
                      text1,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  // Review Button
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 48, vertical: 12),
                      backgroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {
                      if (dialog == true) {
                        showReviewDialog(context);
                      }
                    },
                    child: Text(
                      text2,
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

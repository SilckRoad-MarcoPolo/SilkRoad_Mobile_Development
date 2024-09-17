import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class PasswordResetText extends StatelessWidget {
  String title;
  String description;
  String? logo;
  PasswordResetText(
      {super.key, required this.title, required this.description, this.logo});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(left: (16 / 430) * ScreenUtils.screenWidth(context)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                title,
                style: TextStyle(
                    fontSize: (32 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              logo == null
                  ? const Text("")
                  : Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Image.asset(logo!),
                    )
            ],
          ),
          Text(
            description,
            style: TextStyle(
                color: const Color(0xff646464),
                fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w400),
          )
        ],
      ),
    );
  }
}

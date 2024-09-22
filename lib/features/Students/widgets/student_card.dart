import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

 Container(
      height: ScreenUtils.screenHeight(context) * (90 / 932),
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffB27743)),
          borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: Image.asset(
            'assets/images/photo_6008145075550404211_m 6 (1).png'),
        title: Text(
          'Amira Shawk',
          style: TextStyle(
              fontSize: (16 / 932) *
                  ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500),
        ),
        subtitle: Text('Intermediate',
            style: TextStyle(
                fontSize: (14 / 932) *
                    ScreenUtils.screenHeight(context))),
        trailing: Padding(
          padding: EdgeInsets.only(
              top: (46 / 932) *
                  ScreenUtils.screenHeight(context),
             ),
          child: Icon(Icons.message),
        ),
      ),)
, SizedBox(
                height: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
    ]);}}
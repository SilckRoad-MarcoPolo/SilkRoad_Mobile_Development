import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class MentorFollowers extends StatelessWidget {
  const MentorFollowers({super.key,this.image});
final String ?image;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: (110 / 932) * ScreenUtils.screenHeight(context),
      child: Row(
        children: [
          Image.asset(image!),
          SizedBox(
            width: (20 / 462) * ScreenUtils.screenWidth(context),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Followers',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                  )),
              Text('200',
                  style: TextStyle(
                     fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
                      color: Colors.grey, fontWeight: FontWeight.w400)),
              Container(
                width: (109 / 462) * ScreenUtils.screenWidth(context),
                height: (34 / 932) * ScreenUtils.screenHeight(context),
                decoration: BoxDecoration(
                    border: Border.all(color: Color(0xffD9D9D9)),
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Message',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: (40 / 462) * ScreenUtils.screenWidth(context),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Following',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                  )),
              Text('200',
                  style: TextStyle(
                     fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
                      color: Colors.grey, fontWeight: FontWeight.w400)),
              Container(
                height: (34 / 932) * ScreenUtils.screenHeight(context),
                width: (109 / 462) * ScreenUtils.screenWidth(context),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'Follow',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
    
  }
}

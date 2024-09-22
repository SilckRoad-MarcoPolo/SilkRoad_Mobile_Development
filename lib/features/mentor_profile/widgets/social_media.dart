
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (12 / 932) ),
        child: Row(children: [Icon(Icons.facebook,color:Color(0xff236AF2),),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('Facebook ',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ),
       Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Icon(FontAwesomeIcons.linkedin,color:Color(0xff003EB4),),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('LinkedIn',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ),
       Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (9).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('GitHub',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ), Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (1).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('Discord',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),

        
      ), Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (3).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('Medium',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ),
      
      
      
      
      
       Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (2).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('Codeforces',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ),
       Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (5).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('Stack overflow',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ), Padding(
        padding:  EdgeInsets.only(bottom: ScreenUtils.screenHeight(context) * (16 / 932) ),
        child: Row(children: [Image.asset('assets/images/Vector (6).png'),
        SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462),),
        Text('X',style: TextStyle(
          fontSize: ScreenUtils.screenHeight(context) * (16 / 932) ,
          color: Color(0xff5F5F5F)),)
        ],),
      ),
      
    ],);
  }
}

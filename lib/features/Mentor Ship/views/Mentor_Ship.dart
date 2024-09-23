import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/Mentor%20Ship/widgets/card_tracks.dart';
import 'package:silk_road/features/Mentor%20Ship/widgets/mentorReview.dart';

class MentorShip extends StatefulWidget {
  const MentorShip({super.key});

  @override
  State<MentorShip> createState() => _MentorShipState();
}

class _MentorShipState extends State<MentorShip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
  title: Text(
              "Mentor Ship",
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (22 / 932),
                  fontWeight: FontWeight.w600),
            ),actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search))],
            
            
            ),
            body: SingleChildScrollView(
              child: Padding(
               padding: EdgeInsets.symmetric(
          horizontal: ScreenUtils.screenHeight(context) * (10 / 462),
        ),
                child: Column(
                  children: [
                    ListTracks(),
                   SizedBox(height: (16 / 932)* ScreenUtils.screenHeight(context),),

                   mentorShipList()
                    
                  ],
                ),
              ),
            ),


    );
  }
}
import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class ReviewUser extends StatelessWidget {
  const ReviewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
                'assets/images/photo_1_2024-09-20_00-13-43 1 (1).png'), // You can replace with the actual image URL
        
            SizedBox(width: ScreenUtils.screenWidth(context) * (10 / 462)),
            // Column for the review text and details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Reviewer name and rating
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Youssef Shedeed',
                        style: TextStyle(
                          fontSize:  ScreenUtils.screenHeight(context) * (16 / 932),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '2 weeks ago',
                        style: TextStyle(
                          fontSize:  ScreenUtils.screenHeight(context) * (12 / 932),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: ScreenUtils.screenHeight(context) * (5 / 932)),
        
                  Row(
                    children: [
                      Icon(Icons.star, color: Colors.amber, size: 22),
                     Divider(
                height: 16,
                thickness: 3, 
                color: Color(0xffAFB1A0), 
              ),
                      Text('3.5',style: TextStyle(
        
                          color: Color(0xffAFB1A0),
                          fontSize:  ScreenUtils.screenHeight(context) * (16 / 932)
                      ),),
                    ],
                  ),SizedBox(height: ScreenUtils.screenHeight(context) * (5 / 932)),
        
                  // Review text
                  
                  Text(
                    'He is a great Mentor. He is the best. I would recommend to anyone.',
                    style: TextStyle(fontSize:  ScreenUtils.screenHeight(context) * (14 / 932)),
                  ),
                  
           
                ],
              ),
            ),
          ],
        ),
  SizedBox(height:ScreenUtils.screenHeight(context) * (10 / 932) ,),
      Padding(
       padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtils.screenWidth(context) * (20 / 462),
                ),
        child: Divider(
                
                thickness: 1, 
                color: Color(0xffAFB1A0), 
              ),
              
      ),
        SizedBox(height:ScreenUtils.screenHeight(context) * (10 / 932) ,),
     
      ],
    );
  }
}

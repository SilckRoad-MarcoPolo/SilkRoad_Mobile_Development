import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/Reviews/widgets/rating_review.dart';
import 'package:silk_road/features/Reviews/widgets/review_user.dart';

class ReviewPage extends StatelessWidget {
  const ReviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(
      backgroundColor: Colors.transparent,
       elevation: 0,
       scrolledUnderElevation: 0,
       leading: ArrowBackButton(onTap: (){
         Navigator.pop(context);
       }),
      title: Text(
              "Reviews",
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (20 / 932),
                  fontWeight: FontWeight.w500),
            ),),
            body:Padding(
             padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtils.screenWidth(context) * (18 / 462),
                ),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                
                    RatingSummary(),
                    SizedBox(height: ScreenUtils.screenHeight(context) * (32 / 932),),
                   ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context,index){
                    return ReviewUser();
                   }
                   
                   )
                  ],
                ),
              ),
            ) ,
            
            
            );
  }
}
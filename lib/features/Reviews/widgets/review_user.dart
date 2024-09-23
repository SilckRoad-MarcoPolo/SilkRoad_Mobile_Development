import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class ReviewUser extends StatelessWidget {
  const ReviewUser({super.key,required this.reviewsList,
  });

 final Map<String, dynamic> reviewsList;

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
                       reviewsList['name'],
                        style: TextStyle(
                          fontSize:  ScreenUtils.screenHeight(context) * (16 / 932),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        reviewsList['time'],
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
                      Text(reviewsList['rate'],style: TextStyle(
        
                          color: Color(0xffAFB1A0),
                          fontSize:  ScreenUtils.screenHeight(context) * (16 / 932)
                      ),),
                    ],
                  ),SizedBox(height: ScreenUtils.screenHeight(context) * (5 / 932)),
        
                  // Review text
                  
                  Text(
                  reviewsList['desc'],
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
class listOfRewviews extends StatelessWidget {
  listOfRewviews({super.key});

 final List<Map<String,dynamic>>listRewviews=[
  {'name':'Youssef Shedeed',
  'rate':'3.5',
  'desc':'He is a great Mentor. He is the best. i would recommend to anyone .',
  'time':'2 weeks ago'
  },
  {'name':'Tamer Elgayar',
  'rate':'3',
  'desc':'Amazing mentor! Helped me break down complex concepts into simple steps.',
  'time':'3 weeks ago'
  },
{'name':'Youssef Shedeed',
  'rate':'4',
  'desc':'He is a great Mentor. He is the best. i would recommend to anyone .',
  },
{'name':'Lelia Abdelrahman',
  'rate':'3.8',
  'desc':'Super patient and knowledgeable—guided me through my toughest challenges.',
  'time':'3 weeks ago'
  },
{'name':'Abdelbaset',
  'rate':'2.5',
  'desc':'Great experience! My mentor provided clear explanations and actionable advice.',
  },
{'name':'Allawi Abu Hussien',
  'rate':'3.6',
  'desc':'Very supportive and always available to help with career guidance.',
  'time':'2 weeks ago'
  },
  {'name':'Adel Shakal',
  'rate':'3.5',
  'desc':'A true expert in the field—learned a lot in just a few sessions.',
  'time':'3 weeks ago'
  },



 ];

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context,index){
                      var reviewsList=listRewviews[index];
                    return ReviewUser(reviewsList:reviewsList ,);
                   }
                   
                   ) ;
  }
}
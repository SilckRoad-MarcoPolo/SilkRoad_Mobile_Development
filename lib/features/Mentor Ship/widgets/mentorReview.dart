import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class Mentorreview extends StatelessWidget {
  const Mentorreview({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
        Container(
          height: ScreenUtils.screenHeight(context) * (120 / 932),
          width: (420 / 462) * ScreenUtils.screenWidth(context),
          decoration: BoxDecoration(
              border: Border.all(color: Color(0xffB27743)),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.all((8 / 462) * ScreenUtils.screenWidth(context)),
            child: Row(
              children: [
                Image.asset('assets/images/istockphoto-509286952-612x612 1.png'),
                SizedBox(width: (10 / 462) * ScreenUtils.screenWidth(context)),
        
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Yousef Elgamily',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          ' Backend',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ScreenUtils.screenHeight(context) * (10 / 932),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.person, size: 19),
                        SizedBox(
                            width: (4 / 462) * ScreenUtils.screenWidth(context)),
                        Text('7'),
                      ],
                    ),
        
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 19),
                        SizedBox(
                            width: (4 / 462) * ScreenUtils.screenWidth(context)),
                        Text('3.5'),
                         SizedBox(
                            width: (140/ 462) * ScreenUtils.screenWidth(context)),
                          Container(
                            height: (34 / 932) * ScreenUtils.screenHeight(context),
                            width: (115 / 462) * ScreenUtils.screenWidth(context),
                            decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(9)),
                            child: Center(
                              child: Text(
                                'Guide me',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ), // Ratin
                      ],
                    )
                  ],
                ),
        
             
              ],
            ),
          ),
        ),
        SizedBox( height: (18 / 932) * ScreenUtils.screenHeight(context),)
      ],
    );


  }}

  
class mentorShipList extends StatelessWidget {
  mentorShipList({super.key});

 final List<Map<String,dynamic>>listRewviews=[
  {'name':'Youssef Shedeed',
  'rate':'3.5',
  'track':'-Monile',

  },
  {'name':'Ahmed Magdy-AI',
  'rate':'3.5',
  'track':'-AI',

 
  },
   {'name':'Tamer Elgayar',
  'rate':'3.2',
  'track':'-Mobile',

 
  }, {'name':'Mahmoud Salama-Frontend',
  'rate':'2.3',
  'track':'-Frontend',

 
  }, {'name':'TAhmed Magdy-UI/UX',
  'rate':'3',
  'track':'-Monile',

 
  }, {'name':'Peter Parker-DevOps',
  'rate':'3',
  'track':'-Monile',

 
  }, {'name':'Bruce Wayne-Mobile',
  'rate':'3',
  'track':'-Monile',

 
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
  }}

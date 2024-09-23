import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class Mentorreview extends StatelessWidget {
  const Mentorreview({super.key,required this.mentorsList});
final Map<String,dynamic>mentorsList;
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
                          mentorsList['name'],
                          style: TextStyle(
                            fontSize:  ScreenUtils.screenHeight(context) * (18 / 932),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Text(
                          mentorsList['track'],
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
                        Text(mentorsList['people']), 
                      ],
                    ),
        
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 19),
                        SizedBox(
                            width: (4 / 462) * ScreenUtils.screenWidth(context)),
                        Text(mentorsList['rate']),
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

 final List<Map<String,dynamic>>mentorsList=[
  {'name':'Youssef Shedeed',
  'rate':'3.5',
  'track':'-Mobile',
   'people':'8'

  },
  {'name':'Ahmed Magdy',
  'rate':'3.5',
  'track':'-AI',
   'people':'9'

 
  },
   {'name':'Tamer Elgayar',
  'rate':'3.2',
  'track':'-Mobile',
   'people':'5'

 
  }, {'name':'Mahmoud Salama',
  'rate':'2.3',
  'track':'-Frontend',
 'people':'10'

 
  }, {'name':'TAhmed Magdy',
  'rate':'3',
  'track':'-Monile',
   'people':'11'

 
  }, {'name':'Peter Parker',
  'rate':'3',
  'track':'-DevOps',
   'people':'12'

 
  }, {'name':'Bruce Wayne',
  'rate':'3',
  'track':'-Backend',
   'people':'7'

 
  },
  
  
  
  
  
  ];




  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: mentorsList.length,
                    itemBuilder: (context,index){
                      var mentorShipList=mentorsList[index];
                    return Mentorreview(mentorsList: mentorShipList,);
                   }
                   
                   ) ;
  }}

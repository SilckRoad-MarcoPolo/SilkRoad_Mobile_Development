import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class CustomButtons extends StatelessWidget {
  const CustomButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(
         horizontal: ScreenUtils.screenWidth(context) * (25 / 462),
      ),
      child: Row(
        children: [
          Container(
            height: ScreenUtils.screenHeight(context) * (48 / 932),
            width: (117 / 414) * ScreenUtils.screenWidth(context),
            decoration: BoxDecoration(
              
              borderRadius: BorderRadius.circular(12),
              color: Colors.black,
            ),
            child: GestureDetector(
              onTap: (){},
              child: Column(
                children: [
                  Text(
                    'choose from ',
                    style: TextStyle(
                        fontSize: ScreenUtils.screenHeight(context) * (16/ 932),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'library',
                    style: TextStyle(
                        fontSize: ScreenUtils.screenHeight(context) * (16/ 932),
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
          ),
       SizedBox(
                  width: ScreenUtils.screenWidth(context) * (68/ 414),
                ),
        Container(
            height: ScreenUtils.screenHeight(context) * (48 / 932),
            width: (117 / 414) * ScreenUtils.screenWidth(context),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2
              ),
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
            ),
            child: Center(
              child: TextButton(
                onPressed: () {
                  
                },
                child: Text(
                'take a photo',
                style: TextStyle(
                    fontSize: ScreenUtils.screenHeight(context) * (16 / 932),
                    color: Colors.black,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        )
         
       
        ],
      ),
    );
  }
}

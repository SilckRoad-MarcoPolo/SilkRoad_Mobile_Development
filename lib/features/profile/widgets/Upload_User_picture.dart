import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class UploadUserPicture extends StatelessWidget {
  const UploadUserPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
     return Stack(
      children: [
       
        Container(
          width: ScreenUtils.screenHeight(context) * (106 / 462), // Set width
         height: ScreenUtils.screenHeight(context) * (106 / 932),
           decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.black, 
            width: 3.0, // Border width
          ),
        ),
          child: CircleAvatar(
            radius: 50, // Size of the avatar
            backgroundColor: Colors.white, // Background color
            child: Icon(
              Icons.person,
              size: 50,
              color: Colors.black,
            ),
          ),
        ),
        // Edit icon
        Positioned(
       
           right: 57,
          bottom: 4,
          child: GestureDetector(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(3),
              decoration: BoxDecoration(
                color: Colors.white, 
                shape: BoxShape.circle,
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Icon(
                Icons.camera_enhance, 
                size: 15,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
    
  


  }
}

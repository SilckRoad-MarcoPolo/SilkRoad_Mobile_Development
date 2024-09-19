import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class UploadUserPicture extends StatelessWidget {
  const UploadUserPicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: ScreenUtils.screenHeight(context) * (106 / 462), // Set width
        height: ScreenUtils.screenHeight(context) * (106 / 932), // Set height
        decoration: BoxDecoration(
          shape: BoxShape.circle, // Make it circular
          border: Border.all(
            color: Colors.black, // Border color
            width: 3.0, // Border width
          ),
        ),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person,
                size: 60,
                 color: Colors.black,
              )),
        ),
      ),
      Positioned(
          right: 34,
          bottom: 4,
          child: Container(
            width: ScreenUtils.screenHeight(context) * (32 / 462), // Set width
            height:
                ScreenUtils.screenHeight(context) * (32 / 932), // Set height
            decoration: BoxDecoration(
              shape: BoxShape.circle, // Make it circular
              border: Border.all(
                color: Colors.black, // Border color
                width: 2.0, // Border width
              ),
            ),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                                  Icons.camera_enhance,
                                  size: 18,
                                )),
          ))
    ]);
  }
}


import 'package:flutter/material.dart';

class UserPicture extends StatelessWidget {
  const UserPicture({
    super.key, required this.width, required this.height,
  });
final double  width;
  final  double height;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: width, // Set width
        height: height, // Set height
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
      ),]);}}
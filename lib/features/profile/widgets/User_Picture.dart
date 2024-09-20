
import 'package:flutter/material.dart';

class UserPicture extends StatelessWidget {
  const UserPicture({
    super.key, required this.width, required this.height,required this.size
  });
final double  width;
  final  double height;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: width, 
        height: height, 
        decoration: BoxDecoration(
          shape: BoxShape.circle, 
          border: Border.all(
            color: Colors.black, 
            width: 2.0, 
          ),
        ),
        child: 
            
             Icon(
              Icons.person,
              size: size,
               color: Colors.black,
            ),
      ),]);}}
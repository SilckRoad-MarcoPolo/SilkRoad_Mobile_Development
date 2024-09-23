import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class Descreption extends StatelessWidget {
  const Descreption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Descreption",
          style: TextStyle(
              fontSize: ScreenUtils.screenHeight(context) * (20 / 932),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: ScreenUtils.screenHeight(context) * (8 / 932),
        ),
        Text(
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          "A Python course guide typically serves as a structured roadmap for learning the Python programming language. It outlines the core concepts, syntax, and best practices that form the foundation of Python development.......Read more",
          style: TextStyle(
              color: Color(0xff696767),
              fontSize: ScreenUtils.screenHeight(context) * (13 / 932),
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            Text(
              'Enrolled  2k',
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (16 / 932)),
            ),
            SizedBox(width: ScreenUtils.screenHeight(context) * (45 / 462)),
            Icon(
              Icons.star,
              color: Colors.orange,
              size: 20.0,
            ),
            SizedBox(width: ScreenUtils.screenWidth(context) * (5 / 462)),
            Text(
              '4.9',
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(width: ScreenUtils.screenHeight(context) * (45 / 462)),
            Row(
              children: [
                Icon(
                  Icons.access_time,
                  color: Colors.grey,
                  size: 20.0,
                ),
                SizedBox(width: 5),
                Text(
                  '45 hrs',
                  style: TextStyle(
                      fontSize: ScreenUtils.screenHeight(context) * (16 / 932)),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

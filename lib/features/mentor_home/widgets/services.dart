
import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/mentor_home/widgets/showCalendar.dart';

class Services extends StatelessWidget {
  const Services({
    super.key,
  });
 

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.payment,
                  color: Colors.black,
                  size: (29 / 932) * ScreenUtils.screenHeight(context),
                )),
            Text(
              'Payments',
              style: TextStyle(
                fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
              ),
            )
          ],
        ),
         Column(
          children: [
            IconButton(
                onPressed: () {
                  showCalendar(context);
                },
                icon: Icon(
                  Icons.calendar_today,
                  color: Colors.black,
                  size: (29 / 932) * ScreenUtils.screenHeight(context),
                )),
            Text(
              'Calender',
              style: TextStyle(
                fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
              ),
            )
          ],
        ),
         Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.star,
                color: Color(0xffFFD747),
                  size: (30 / 932) * ScreenUtils.screenHeight(context),
                )),
            Text(
              'Reviews',
              style: TextStyle(
                fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
              ),
            )
          ],
        ),
      ],
    );
  }
}

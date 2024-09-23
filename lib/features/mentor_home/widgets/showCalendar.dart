import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:table_calendar/table_calendar.dart';

void showCalendar(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          width: ScreenUtils.screenWidth(context) * (420 / 462),
          height: (400 / 932) * ScreenUtils.screenHeight(context),
          child: TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
          ),
        ),
      );
    },
  );
}

import 'package:flutter/material.dart';
import 'package:silk_road/features/videos/widgets/audio_card.dart';

class Audio_List extends StatelessWidget {
  Audio_List({
    super.key,
  });

  List<String> lessons = [
    'Sequences and Iterations',
    'Booleans and Conditions',
    'Sequence Mutation and Accumulation',
    'Booleans and Conditions',
    ' Booleans and Conditions',
    "function and methods"
  ];
  List<String> timeLessons = [
    '11:00',
    '20:40',
    '16:00',
    '17:00',
    ' 10:00',
    "22:00"
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: lessons.length,
            (BuildContext context, int index) {
      return Audio_card(
        text: lessons[index],
        timeLessons: timeLessons[index],
      );
    }));
  }
}

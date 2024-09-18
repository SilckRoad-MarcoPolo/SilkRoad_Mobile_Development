import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class CardofTracks extends StatelessWidget {
  const CardofTracks({
    super.key,
    required this.text,
    required this.color,
  });
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: (16 / 414) * ScreenUtils.screenWidth(context)),
      child: Container(
        width: (118 / 414) * ScreenUtils.screenWidth(context),
        height: (52 / 932) * ScreenUtils.screenHeight(context),
        decoration: BoxDecoration(
            color: color, borderRadius: BorderRadius.circular(16)),
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 18, color: Colors.white),
            )),
      ),
    );
  }
}

class ListOfTracks extends StatelessWidget {
  ListOfTracks({super.key});
  final List<String> trackName = [
    'Backend',
    'Frontend',
    'UI/Ux ',
    'Flutter ',
    'IOs',
    'Ai',
    
  ];
  final List<Color> colorList = [
    Color(0xff9F5514),
    Color(0xffD89A46),
    Color(0xffF2C1B9),
    Color(0xffFFECB2),
    Color(0xffE4B87D),
    Color(0xffFFCE51),
  ];
//  final List<Map<String,Color>> TrackList = [

// {
//   'Backend':Color(0xff9F5514),
// },
// {
// 'Frontend':Color(0xffD89A46),

// }

//  ];



  @override
  Widget build(BuildContext context) {
    return Container(
      height: (52 / 932) * ScreenUtils.screenHeight(context),
      child: Expanded(
        child: ListView.builder(
            shrinkWrap: true,
            itemCount: trackName.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (BuildContext, index) {
              return CardofTracks(
                color: colorList[index],
                text: trackName[index],
              );
            }),
      ),
    );
  }
}

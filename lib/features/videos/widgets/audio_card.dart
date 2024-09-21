import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/videos/views/video_page.dart';

class Audio_card extends StatefulWidget {
  const Audio_card({
    super.key,
  });

  @override
  State<Audio_card> createState() => _Audio_cardState();
}

class _Audio_cardState extends State<Audio_card> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 12),
      onTap: () {
           setState(() {
             isClicked=true;
             Navigator.push(context, MaterialPageRoute(builder: (context){
return VideoPage();

             }));
           });

      },
      leading: Container(
        padding: const EdgeInsets.all(11),
        decoration: BoxDecoration(
          color: isClicked ? Colors.black : Color(0xffAFB1A0),
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.play_arrow, color: Colors.white, size: 22),
      ),
      title: Text(
        "Sequences and Iterations",
        style: TextStyle(
            fontSize: (15 / 932) * ScreenUtils.screenHeight(context), color: isClicked ? Colors.black : Color(0xff939393)),
      ),
      trailing: Text(
        "10:00",
        style: TextStyle(
            fontSize:(15 / 932) * ScreenUtils.screenHeight(context), color: isClicked ? Colors.black : Color(0xff939393)),
      ),
    );
  }
}

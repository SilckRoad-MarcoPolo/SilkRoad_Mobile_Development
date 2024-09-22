import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class CardTracks extends StatelessWidget {
  const CardTracks({
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
        width: (100 / 414) * ScreenUtils.screenWidth(context),
        height: (38 / 932) * ScreenUtils.screenHeight(context),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xffB27743)),
            color: color, borderRadius: BorderRadius.circular(16)),
        child: TextButton(
            onPressed: () {},
            child: Text(
              text,
              style: TextStyle(fontSize: 14, color: Colors.black),
            )),
      ),
    );
  }
}

class ListTracks extends StatefulWidget {
  ListTracks({super.key});

  @override
  State<ListTracks> createState() => _ListTracksState();
}

class _ListTracksState extends State<ListTracks> {
  final List<String> trackName = [
    'All',
    'Backend',
    'Frontend',
    'UI/Ux ',
    'Flutter ',
    'IOs',
    'Ai',
    
  ];

bool isSelected=false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: (52 / 932) * ScreenUtils.screenHeight(context),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: trackName.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext, index) {
            return GestureDetector(
              onTap: () {
                
                setState(() {
                  isSelected=true;
                });
              },
              child: CardTracks(
                color: isSelected?  Color(0xffB27743): Colors.white,
                text: trackName[index],
              ),
            );
          }),
    );
  }
}

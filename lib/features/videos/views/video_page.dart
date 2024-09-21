import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/videos/widgets/audio_list.dart';
import 'package:silk_road/features/videos/widgets/comment_section.dart';
import 'package:video_player/video_player.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({super.key});

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  @override
  late FlickManager flickManager;

  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
        videoPlayerController: VideoPlayerController.networkUrl(
          Uri.parse(
              "https://www.w3schools.com/html/mov_bbb.mp4"),
        ));
  }

  void dispose() {
    flickManager.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AspectRatio(
                aspectRatio: 14 / 10,
                child: FlickVideoPlayer(flickManager: flickManager)),
            SizedBox(
              height: (16 / 932) * ScreenUtils.screenHeight(context),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtils.screenWidth(context) * (16 / 462),
              ),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(

                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Introduction and The Basics of',
                            style: TextStyle(
                                fontSize: (19 / 932) *
                                    ScreenUtils.screenHeight(context),
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            'Programming in Python',
                            style: TextStyle(
                                fontSize: (18 / 932) *
                                    ScreenUtils.screenHeight(context),
                                fontWeight: FontWeight.w800),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: (64 / 450) * ScreenUtils.screenWidth(context),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 30,
                        ),
                        onPressed: () {
                          // Define the action for the menu button
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (10 / 932) * ScreenUtils.screenHeight(context),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            right: (13 / 414) * ScreenUtils.screenWidth(context)),
                        child: Text(
                          '100 views',
                          style: TextStyle(
                              color: Color(0xffAFB1A0),
                              fontSize:
                              (12 / 932) * ScreenUtils.screenHeight(context),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            right: (13 / 414) * ScreenUtils.screenWidth(context)),
                        child: Text(
                          ' 12d ago',
                          style: TextStyle(
                              color: Color(0xffAFB1A0),
                              fontSize:
                              (12 / 932) * ScreenUtils.screenHeight(context),
                              fontWeight: FontWeight.w800),
                        ),
                      ),
                      Text(
                        '.....more',
                        style: TextStyle(
                            fontSize:
                            (12 / 932) * ScreenUtils.screenHeight(context),
                            fontWeight: FontWeight.w800),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: (16 / 932) * ScreenUtils.screenHeight(context),
                  ),
                  CommentSection(),
                  SizedBox(
                    height: (17 / 932) * ScreenUtils.screenHeight(context),
                  ),
                  Text(
                    "Play List",
                    style: TextStyle(fontSize:(20 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: (23 / 932) * ScreenUtils.screenHeight(context),
                  ),
                ],
              ),
            ),
            CustomScrollView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              slivers: [Audio_List()],
            )

          ],
        ),
      ),
    );
  }
}

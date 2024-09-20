
import 'package:flutter/material.dart';
import 'package:silk_road/features/videos/widgets/audio_card.dart';

class Audio_List extends StatelessWidget {
  const Audio_List({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return

    SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 6,
            (BuildContext context,int index) {
      return Audio_card();
        
    }));
    
}
}
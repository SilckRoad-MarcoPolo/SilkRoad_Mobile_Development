
import 'package:flutter/material.dart';

class Audio_card extends StatelessWidget {
  const Audio_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      onTap: (){},
      leading:  Container(
                padding: const EdgeInsets.all(11),
                decoration: BoxDecoration(
                  color: Color(0xffAFB1A0),
                  shape: BoxShape.circle,
                ),
                child:
                Icon(Icons.play_arrow, color: Colors.white, size: 22),
               
              ),
      
      title:  Text(
      "Sequences and Iterations",
      style: TextStyle(fontSize: 15, color: Color(0xff939393)),
    ), 
    trailing:  Text(
      "10:00",
      style: TextStyle(fontSize: 15, color: Color(0xff939393)),
    ),
      
      
      );
  }
}

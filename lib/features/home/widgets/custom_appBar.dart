
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
 customAppBar({ required this.title,required this.subtile,required this.actions,
    super.key,
  });
    
List<Widget> actions;
String title,subtile;
  @override
  Widget build(BuildContext context) {
    return AppBar(
       elevation: 0,
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        title: Column(
          children: [
            Text(
            title,
              style: TextStyle(fontSize: 16,color: Colors.grey),
            ),
            Text(subtile,style: TextStyle(fontSize: 20),)
          ],
        ),
        actions:actions
          
          
          );
  }
}

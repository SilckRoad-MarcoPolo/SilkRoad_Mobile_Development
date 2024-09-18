
import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });
    Widget _buildNotificationIcon() {
    return Stack(
      children: [
        IconButton(
          icon: Icon(
            Icons.notifications,
            color: Color(
              0xffFFCE51,
            ),
            size: 35,
          ),
          onPressed: () {
            // Handle notification tap
          },
        ),
        Positioned(
          right: 0,
          child: Container(
            padding: EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(10),
            ),
            constraints: BoxConstraints(
              minWidth: 20,
              minHeight: 20,
            ),
            child: Center(
              child: Text(
                '5',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    );
  }


  @override
  Widget build(BuildContext context) {
    return AppBar(
       
        title: Column(
          children: [
            Text(
              'Welcome',
              style: TextStyle(fontSize: 16,color: Colors.grey),
            ),
            Text('navigator',style: TextStyle(fontSize: 20),)
          ],
        ),
        actions: [
          Image.asset('assets/images/Group 481506.png')
//           Stack(
//             clipBehavior: Clip.none,
//             children: [
//             Image.asset('assets/images/Group 481719.png'),

//  Positioned(
  
//          left: 14,
//        bottom: 22,
//           child: Container(
//             padding: EdgeInsets.all(4),
//             decoration: BoxDecoration(
//               color: Colors.red,
//               borderRadius: BorderRadius.circular(15),
//             ),
//             constraints: BoxConstraints(
//               minWidth: 20,
//               minHeight: 20,
//             ),
//             child: Center(
//               child: Text(
//                 '5',
//                 style: TextStyle(color: Colors.white, fontSize: 12),
//               ),
//             ),
//           ),
//         ),
            
//           ],
          
          
//           )
          
          
          ]);
  }
}

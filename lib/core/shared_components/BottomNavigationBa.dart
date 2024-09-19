
import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/features/home/view/home_view.dart';
import 'package:silk_road/features/profile/view/profile_view.dart';

import '../../features/my_courses/view/my_courses.dart';

class BOttomNavigationBar extends StatefulWidget {
  @override
  _BOttomNavigationBarState createState() => _BOttomNavigationBarState();
}

class _BOttomNavigationBarState extends State<BOttomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> bodyContent = [
    HomeView(),
  
  ProfilePage(),
      MyCourses()
  ];


 
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index; 
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
   
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: kDarktGrey, // Set current index
        selectedItemColor: kOrange, // Color of selected item
        onTap: _onItemTapped, // Callback when an item is tapped
      ),
      body: bodyContent[_selectedIndex],
    );
  }
}

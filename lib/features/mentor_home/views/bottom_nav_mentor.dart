
import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/features/Appointments_mentor/view/appointments.dart';
import 'package:silk_road/features/Mentor%20Ship/views/Mentor_Ship.dart';
import 'package:silk_road/features/mentor_home/views/mentor_home_view.dart';




class BOttomNavMentor extends StatefulWidget {
  @override
  _BOttomNavMentorState createState() => _BOttomNavMentorState();
}

class _BOttomNavMentorState extends State<BOttomNavMentor> {
  int _selectedIndex = 0;
  List<Widget> bodyContent = [
    MentorHomeView(),
    AppointmentsMentor(button: false,),
    MentorShip()
   
  ];


 
  void _onItemTapped(int index) {
    if(index < 3){
      setState(() {
        _selectedIndex = index;
      });
    }

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
            icon: Icon(Icons.calendar_month),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.supervised_user_circle),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger_outline),
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

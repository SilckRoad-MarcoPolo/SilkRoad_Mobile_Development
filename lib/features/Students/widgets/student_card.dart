import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/features/user_profile/user_profile_view.dart';

class StudentCard extends StatelessWidget {
  const StudentCard({super.key, required this.studentList});
  final Map<String, dynamic> studentList;
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        height: ScreenUtils.screenHeight(context) * (90 / 932),
        decoration: BoxDecoration(
            border: Border.all(color: Color(0xffB27743)),
            borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => UserProfilePage()));
          },
          leading: Image.asset(
              'assets/images/photo_6008145075550404211_m 6 (1).png'),
          title: Text(
            studentList['name'],
            style: TextStyle(
                fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w500),
          ),
          subtitle: Text('Intermediate',
              style: TextStyle(
                  fontSize: (14 / 932) * ScreenUtils.screenHeight(context))),
          trailing: Padding(
            padding: EdgeInsets.only(
              top: (46 / 932) * ScreenUtils.screenHeight(context),
            ),
            child: Icon(Icons.message),
          ),
        ),
      ),
      SizedBox(
        height: (20 / 932) * ScreenUtils.screenHeight(context),
      ),
    ]);
  }
}

class studentList extends StatelessWidget {
  studentList({super.key});
  List<Map<String, String>> students = [
    {
      'name': 'Amira Shawki',
    },
    {
      'name': 'Dina Ragab',
    },
    {
      'name': 'Nourhan Ehab',
    },
    {
      'name': 'anar Eldesoki',
    },
    {
      'name': 'Alaa Tarek',
    },
    {
      'name': 'Sara Ahmed',
    },
    {
      'name': 'Mena Elsayad',
    },
    {
      'name': 'Ali Ahmed',
    },
    {
      'name': 'Salma Ahmed',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: students.length,
        itemBuilder: (context, index) {
          return StudentCard(
            studentList: students[index],
          );
        });
  }
}

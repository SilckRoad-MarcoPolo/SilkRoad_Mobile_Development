import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';
import '../../../core/shared_components/widgets/gradiant_color_header.dart';

class MyCourses extends StatefulWidget {
  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  List<dynamic> courses = [];
  bool isLoading = true;
  String apiUrl = 'https://silkroadapis-production.up.railway.app/api/v1/modules';

  @override
  void initState() {
    super.initState();
    fetchCourses();
  }

  Future<void> fetchCourses() async {
    try {
      final response = await http.get(Uri.parse(apiUrl));
      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        setState(() {
          courses = data['data']['docs']; // Access the docs array
          isLoading = false;
        });
      } else {
        // Handle error response
        throw Exception('Failed to load courses');
      }
    } catch (e) {
      // Handle network or parsing errors
      print(e);
      setState(() {
        isLoading = false; // Stop loading on error
      });
    }
  }

  Widget buildCourseCard(BuildContext context, Map<String, dynamic> course) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      color: Colors.transparent,
      child: ListTile(
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Color.fromRGBO(196, 196, 196, 0.7),
            width: 1.5,
          ),
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            "assets/images/onboarding/second.png", // You can customize the image logic
            width: (117 / 430) * ScreenUtils.screenWidth(context),
            height: (74 / 932) * ScreenUtils.screenHeight(context),
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          course['title'], // Update to use dynamic data
          style: TextStyle(
            fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
            fontWeight: FontWeight.w500,
            color: const Color(0xff3F3F3F),
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Price: \$${course['price']}", // Include price
              style: TextStyle(
                fontSize: (10 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(125, 0, 0, 0),
              ),
            ),
            Text(
              "Duration: ${course['duration']} hrs", // Include duration
              style: TextStyle(
                fontSize: (8 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w400,
                color: const Color.fromARGB(125, 0, 0, 0),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  width: (50 / 432) * ScreenUtils.screenWidth(context),
                  height: (50 / 432) * ScreenUtils.screenWidth(context),
                  child: CircularProgressIndicator(
                    value: course['progress'] != null ? course['progress'] / 100 : 0, // Merge both branches' logic
                    strokeWidth: 2, // Retaining the stroke width from 'main'
                    backgroundColor: Color(0xbeffc100),
                    valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                ),
                Text(
                  '${course['progress'] ?? 0}%', // Display progress with null safety
                  style: TextStyle(
                    fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("My Courses", style: TextStyle(
          fontSize: (22 / 932) * ScreenUtils.screenHeight(context),
          fontWeight: FontWeight.w600,
        )),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.person))],
        backgroundColor: Colors.transparent,
        elevation: 0,
        scrolledUnderElevation: 0,
      ),
      body: isLoading
          ? Center(child: CircularProgressIndicator()) // Loading indicator
          : SingleChildScrollView(
              child: Column(
                children: courses.map((course) => buildCourseCard(context, course)).toList(),
              ),
            ),
    );
  }
}

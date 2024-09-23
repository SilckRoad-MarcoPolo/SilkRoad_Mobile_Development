import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/ai_page/view/result.dart';
import 'package:silk_road/features/home/widgets/customSearch.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Skill {
  final String name;
  final String imagePath;
  bool isSelected;

  Skill({required this.name, required this.imagePath, this.isSelected = false});
}

class CareerMatchPage extends StatefulWidget {
  @override
  _CareerMatchPageState createState() => _CareerMatchPageState();
}

class _CareerMatchPageState extends State<CareerMatchPage> {
  List<Skill> skills = [
    Skill(name: "React", imagePath: "assets/images/skills/react.png"),
    Skill(name: "Node.js", imagePath: "assets/images/skills/node_js.png"),
    Skill(name: "JavaScript", imagePath: "assets/images/skills/javascribt.png"),
    Skill(name: "MongoDB", imagePath: "assets/images/skills/mongo.png"),
    Skill(name: "iOS", imagePath: "assets/images/skills/ios.png"),
    Skill(name: ".NET", imagePath: "assets/images/skills/net.png"),
    Skill(name: "PHP", imagePath: "assets/images/skills/php.png"),
    Skill(name: "Ruby", imagePath: "assets/images/skills/ruby.png"),
    Skill(name: "Rust", imagePath: "assets/images/skills/rust.png"),
    Skill(name: "Python", imagePath: "assets/images/skills/python.png"),
    Skill(name: "Java", imagePath: "assets/images/skills/java.png"),
    Skill(name: "C++", imagePath: "assets/images/skills/c++.png"),
    Skill(name: "TypeScript", imagePath: "assets/images/skills/typescript.png"),
    Skill(name: "Angular", imagePath: "assets/images/skills/angular.png"),
    Skill(name: "Vue.js", imagePath: "assets/images/skills/vue_js.png"),
    Skill(name: "Docker", imagePath: "assets/images/skills/docker.png"),
    Skill(name: "Kubernetes", imagePath: "assets/images/skills/kubernetes.png"),
    Skill(name: "AWS", imagePath: "assets/images/skills/aws.png"),
    Skill(name: "Firebase", imagePath: "assets/images/skills/firebase.png"),
    Skill(name: "GraphQL", imagePath: "assets/images/skills/graph_qL.png"),
  ];

  List<Skill> filteredSkills = [];
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    filteredSkills = skills;
    searchController.addListener(_filterSkills);
  }

  void _filterSkills() {
    setState(() {
      filteredSkills = skills
          .where((skill) => skill.name
          .toLowerCase()
          .contains(searchController.text.toLowerCase()))
          .toList();
    });
  }

  Future<void> _submitSkills(List<Skill> selectedSkills) async {
    // Prepare skills for the GET request
    String skillsString = selectedSkills.map((s) => s.name).join(", ");

    // Show loading screen while making API call
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => AILoadingScreen()),
    );

    try {
      // Make GET request
      final response = await http.get(Uri.parse('https://recipe-recommender-w5nk.onrender.com/recommend/?skills=$skillsString'));

      // Close the loading screen before proceeding
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }

      if (response.statusCode < 300) {
        // Parse the response
        final responseData = json.decode(response.body);

        // Extract the first job title from the recommendations
        String jobTitle = responseData['recommendations'][0]['job_title'];

        // Navigate to the CareerPathConfirmationPage with the job title
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => CareerPathConfirmationPage(careerPath: jobTitle),
          ),
        );
      } else {
        // Show error dialog on failure
        _showErrorDialog("Failed to fetch recommendations. Please try again.");
      }
    } catch (error) {
      // Handle network errors
      _showErrorDialog("An error occurred: $error");

      // Close the loading screen if it's still open
      if (Navigator.canPop(context)) {
        Navigator.pop(context);
      }
    }
  }

  void _showErrorDialog(String message) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CustomScrollView(
            slivers: [
              SliverAppBar(
                title: Text("Career Match"),
                leading: ArrowBackButton(onTap: () {
                  Navigator.pop(context);
                }),
                floating: true,
                snap: true,
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: CustOmSearch(
                    controller: searchController,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 12, bottom: 6),
                  child: Text(
                    "Suggestions",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                      (context, index) {
                    final skill = filteredSkills[index];
                    return SkillCard(
                      skill: skill,
                      onToggle: () {
                        setState(() {
                          skill.isSelected = !skill.isSelected;
                        });
                      },
                    );
                  },
                  childCount: filteredSkills.length,
                ),
              ),
              SliverPadding(padding: EdgeInsets.only(bottom: 80)),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 10,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: ScreenUtils.screenWidth(context) * (16 / 430),
              ),
              child: CustomButton(
                text: "Next",
                onTap: () {
                  final selectedSkills = skills.where((s) => s.isSelected).toList();

                  if (selectedSkills.isNotEmpty) {
                    // Call the API and navigate based on the result
                    _submitSkills(selectedSkills);
                  } else {
                    // Show a message if no skills are selected
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("Please select at least one skill")),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SkillCard extends StatelessWidget {
  final Skill skill;
  final VoidCallback onToggle;

  const SkillCard({Key? key, required this.skill, required this.onToggle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Color(0xffF6EFE8),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Row(
          children: [
            // Replacing CircleAvatar with Container for transparent background
            Container(
              width: 48, // same as the diameter of CircleAvatar (2 * radius)
              height: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                // Transparent background
                color: Colors.transparent,
                image: DecorationImage(
                  image: AssetImage(skill.imagePath),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(skill.name,
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  Text("+50K subscription",
                      style: TextStyle(fontSize: 12, color: Colors.grey)),
                ],
              ),
            ),
            GestureDetector(
              onTap: onToggle,
              child: Container(
                padding: EdgeInsets.symmetric(
                    horizontal: (25 / 430) * ScreenUtils.screenWidth(context),
                    vertical: (8 / 932) * ScreenUtils.screenHeight(context)),
                decoration: BoxDecoration(
                  color: skill.isSelected ? Colors.black : Colors.transparent,
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  "Add",
                  style: TextStyle(
                      color: skill.isSelected ? Colors.white : Colors.black,
                      fontSize: (12 / 932) * ScreenUtils.screenHeight(context)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AILoadingScreen extends StatelessWidget {
  const AILoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF6EFE8),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return Stack(
              fit: StackFit.expand,
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.4,
                  left: 0,
                  right: 0,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/ai_loading.png',
                        width: constraints.maxWidth * 0.3,
                        height: constraints.maxWidth * 0.3,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Working on your Track .....',
                        style: TextStyle(
                          fontSize: (27 / 932) * ScreenUtils.screenHeight(context),
                          fontWeight: FontWeight.w500,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/features/streak_screen/view/insight_pop_up.dart';
import '../../../core/helpers/screen_utils.dart';
import '../../../core/shared_components/widgets/gradiant_color_header.dart';
import '../../quiz_page/view/quiz_overview_screen.dart';
import '../../quiz_page/view/start_quiz_screen.dart';

class IqSkills extends StatefulWidget {
  IqSkills({Key? key}) : super(key: key);

  @override
  State<IqSkills> createState() => _IqSkillsState();
}

class _IqSkillsState extends State<IqSkills> {
  int selectedIndex = 0;

  final List<Map<String, dynamic>> tracksAssessments = [
    {'name': 'Bootstrap', 'week': 'week 1', 'questions': 50},
    {'name': 'Python', 'week': 'week 2', 'questions': 50},
    {'name': 'Adobe', 'week': 'week 3', 'questions': 50},
    {'name': 'Python', 'week': 'week 1', 'questions': 50},
    {'name': 'Django', 'week': 'week 2', 'questions': 50},
    {'name': 'NEXT.JS', 'week': 'week 3', 'questions': 50},
    {'name': 'MERN Stack', 'week': 'week 1', 'questions': 50},
    {'name': 'Full Stack', 'week': 'week 2', 'questions': 50},
  ];

  final List<Map<String, dynamic>> lastResults = [
    {
      'name': 'Data Analysis',
      'level': 'Beginner',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'SQL Server',
      'level': 'Intermediate',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'Flutter',
      'level': 'Professional',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'Web Development',
      'level': 'Beginner',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'Linux Basics',
      'level': 'Intermediate',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'Docker',
      'level': 'Professional',
      'questions': 50,
      'progress': 80
    },
    {
      'name': 'Node JS',
      'level': 'Intermediate',
      'questions': 50,
      'progress': 80
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: GradiantColorHeader(
              title: "IQ Skills",
              icon: true,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  _buildToggleButton("Tracks Assessments", 0),
                  _buildToggleButton("Last Result", 1),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            sliver: selectedIndex == 0
                ? _buildTracksAssessmentsList()
                : _buildLastResultsList(),
          ),
        ],
      ),
    );
  }

  Widget _buildToggleButton(String text, int index) {
    bool isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color:  isSelected
                  ? const Color(0xffD89A46)
                  : const Color(0xff000000),
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
              fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
            ),
          ),
          const SizedBox(height: 4),
          Container(
            height: (3 / 932) * ScreenUtils.screenHeight(context),
            width: (187 / 430) * ScreenUtils.screenWidth(context),
            decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xffD89A46)
                  : const Color(0xffC4C4C4),
              borderRadius: const BorderRadius.all(Radius.circular(16)),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTracksAssessmentsList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var assessment = tracksAssessments[index];
          return TracksAssessmentCard(assessment: assessment);
        },
        childCount: tracksAssessments.length,
      ),
    );
  }

  Widget _buildLastResultsList() {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          var result = lastResults[index];
          return LastResultCard(result: result);
        },
        childCount: lastResults.length,
      ),
    );
  }
}

class TracksAssessmentCard extends StatelessWidget {
  final Map<String, dynamic> assessment;

  const TracksAssessmentCard({Key? key, required this.assessment})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side:  const BorderSide(
          color: Color(0xb3c4c4c4),
          width: 1, // Border width
        ),
      ),
      margin: EdgeInsets.only(bottom: 8),
      child: ListTile(
        onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> QuizStartScreen()));},
        visualDensity: VisualDensity(vertical: 3),
        leading: Image.asset(
          "assets/images/techs/data_analysis.png",
          width: (100 / 430) * ScreenUtils.screenWidth(context),
          height: (70 / 932) * ScreenUtils.screenHeight(context),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(assessment['name'],
                style: TextStyle(fontWeight: FontWeight.bold)),
            Text('-${assessment['week']}',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize:  (12 / 932) * ScreenUtils.screenHeight(context)
                )),
          ],
        ),
        subtitle: Text(
            '${assessment['questions']} questions',
                style: TextStyle(
                  color: const Color(0x80000000),
            fontSize: (12 / 932) * ScreenUtils.screenHeight(context)
        ),
        ),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}

class LastResultCard extends StatelessWidget {
  final Map<String, dynamic> result;

  const LastResultCard({Key? key, required this.result}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0,
      margin: EdgeInsets.only(bottom: 8),
      child: ListTile(
        visualDensity: VisualDensity(vertical: 3),
        horizontalTitleGap: 0,
        contentPadding:EdgeInsets.zero,
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => QuizOverviewScreen(
                        arrowButton: false,
                      )));
        },
        leading: Image.asset(
          "assets/images/techs/data_analysis.png",
          width: (130 / 430) * ScreenUtils.screenWidth(context),
          height: (100 / 932) * ScreenUtils.screenHeight(context),
        ),
        title: Text(result['name'],
            style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(result['level'], style: TextStyle(
                color: const Color(0xA6000000),
                fontSize: (15 / 932) * ScreenUtils.screenHeight(context)
            ),),
            Text('${result['questions']} questions',
            style: TextStyle(
                color: const Color(0xA6000000),
                fontSize: (12 / 932) * ScreenUtils.screenHeight(context)
            ),),
          ],
        ),
        trailing: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              width: (50 / 432) * ScreenUtils.screenWidth(context),
              height: (50 / 432) * ScreenUtils.screenWidth(context),
              child: CircularProgressIndicator(
                value: result['progress'] / 100,
                strokeWidth: 2,
                backgroundColor: Color(0xbeffc100),
                valueColor: const AlwaysStoppedAnimation<Color>(Colors.black),
              ),
            ),
            Text(
              '${result['progress']}%',
              style: TextStyle(
                fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

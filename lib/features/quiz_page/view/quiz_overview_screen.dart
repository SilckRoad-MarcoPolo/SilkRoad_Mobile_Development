import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';


class QuizOverviewScreen extends StatelessWidget {
  bool arrowButton = true;
   QuizOverviewScreen({Key? key,required this.arrowButton}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBF6F0),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: (70 / 932) * ScreenUtils.screenHeight(context)),
          arrowButton?Text(""):ArrowBackButton(onTap: (){
            Navigator.pop(context);
          }),
          Center(
            child: Text(
              'Quiz Overview',
              style: TextStyle(
                fontSize: (24 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: (40 / 932) * ScreenUtils.screenHeight(context)),
          // Chart Container
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: (250 / 932) * ScreenUtils.screenHeight(context),
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: EdgeInsets.all((16 / 932) * ScreenUtils.screenHeight(context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Score',
                      style: TextStyle(
                        fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
                    Expanded(
                      child: BarChart(
                        BarChartData(
                          alignment: BarChartAlignment.start,
                          maxY: 100,
                          minY: 0,
                          barTouchData: BarTouchData(enabled: false),
                          titlesData: FlTitlesData(
                            show: true,
                            bottomTitles: AxisTitles(
                              sideTitles: SideTitles(
                                maxIncluded: true,
                                minIncluded: true,
                                showTitles: true,
                                getTitlesWidget: (value, meta) => Padding(
                                  padding: EdgeInsets.only(top: (8 / 932) * ScreenUtils.screenHeight(context),),
                                  child: Text(
                                    ['Beginner', 'Intermediate', 'Professional'][value.toInt()],
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                                    ),
                                  ),
                                ),
                                reservedSize: (40 / 932) * ScreenUtils.screenHeight(context),
                              ),
                            ),
                            leftTitles: AxisTitles(
                              sideTitles: SideTitles(
                                showTitles: true,
                                reservedSize: (30 / 430) * ScreenUtils.screenWidth(context),
                                interval: 25,
                                getTitlesWidget: (value, meta) => Text(
                                  value.toInt().toString(),
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                                  ),
                                ),
                              ),
                            ),
                            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          ),
                          gridData: FlGridData(
                            show: true,
                            drawVerticalLine: false,
                            horizontalInterval: 25,
                            getDrawingHorizontalLine: (value) => FlLine(
                              color: Color(0xfCCCCCC).withOpacity(0.5),
                              strokeWidth: 1,
                            ),
                            checkToShowHorizontalLine: (value) =>
                            (value % 25 == 0 || value == 0 || value == 100),
                          ),
                          borderData: FlBorderData(show: false),
                          barGroups: [
                            _buildBarGroup(context, 0, 75, Color(0xffB27743)),
                            _buildBarGroup(context, 1, 50, Color(0xffB27743)),
                            _buildBarGroup(context, 2, 35, Color(0xffB27743)),
                          ],
                          groupsSpace: (60 / 430) * ScreenUtils.screenWidth(context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: (8 / 932) * ScreenUtils.screenHeight(context)),
          // Level Descriptions
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              children:[
                _buildLevelDescription(
                  context,
                  'Beginner Level:',
                  'Positive: "Great start! Keep mastering the basics."',
                  'Constructive: "Focus more on the basics to improve."',
                  75,
                ),
                Divider(color: Color(0xffB27743).withOpacity(0.5), height: 1),
                _buildLevelDescription(
                  context,
                  'Intermediate Level:',
                  'Positive: "Nice progress! Take on harder challenges."',
                  'Constructive: "You\'re doing well—just dive deeper into key areas."',
                  50,
                ),
                Divider(color: Color(0xffB27743).withOpacity(0.5), height: 1),
                _buildLevelDescription(
                  context,
                  'Professional Level:',
                  'Positive: "Excellent! Keep honing your expertise."',
                  'Constructive: "Stay sharp—focus on advanced trends and projects."',
                  30,
                ),
              ],
            ),
          ),
          Spacer(),
          arrowButton?Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Stack(
                alignment: Alignment.center,
                children: [


                  SizedBox(
                      width: (62 / 430) * ScreenUtils.screenWidth(context),
                      height: (62 / 430) * ScreenUtils.screenWidth(context),
                      child: CircularProgressIndicator(color:Colors.black,value: 100,strokeWidth: 2,)),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.black,
                      shape: CircleBorder(),
                      padding: EdgeInsets.all((10 / 430) * ScreenUtils.screenWidth(context)),
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white),
                    onPressed: (){}
                  ),
                ],
              ),
            ),
          ):Text(""),
          Spacer(),
          Image.asset("assets/images/sahraa.png", width: ScreenUtils.screenWidth(context),)
        ],
      ),

    );
  }

  BarChartGroupData _buildBarGroup(BuildContext context, int x, double y, Color color) {
    return BarChartGroupData(

      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: color,
          width: (25 / 430) * ScreenUtils.screenWidth(context),
          borderRadius: BorderRadius.zero,

        ),
      ],
    );
  }

  Widget _buildLevelDescription(
      BuildContext context,
      String level,
      String positiveFeedback,
      String constructiveFeedback,
      int percentage,
      ) {
    return Container(
      height: (80 / 932) * ScreenUtils.screenHeight(context),
      padding: EdgeInsets.symmetric(
        horizontal: (4 / 430) * ScreenUtils.screenWidth(context),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: (50 / 430) * ScreenUtils.screenWidth(context),
            height: (50 / 932) * ScreenUtils.screenHeight(context),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffB27743), width: 2),
            ),
            child: Center(
              child: Text(
                '$percentage%',
                style: TextStyle(
                  fontSize: (16 / 932) * ScreenUtils.screenHeight(context),
                  fontWeight: FontWeight.bold,
                  color: Color(0xffB27743),
                ),
              ),
            ),
          ),
          SizedBox(width: (16 / 430) * ScreenUtils.screenWidth(context)),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  level,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: (2 / 932) * ScreenUtils.screenHeight(context)),
                Text(
                  positiveFeedback,
                  style: TextStyle(
                    fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                    color: Colors.black87,
                  ),
                ),
                Text(
                  constructiveFeedback,
                  style: TextStyle(
                    fontSize: (12 / 932) * ScreenUtils.screenHeight(context),
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
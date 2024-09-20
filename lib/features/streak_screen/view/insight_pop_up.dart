import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class InsightsPopup extends StatelessWidget {
  const InsightsPopup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: (22 / 430) * ScreenUtils.screenWidth(context)),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        padding: EdgeInsets.all((20 / 932) * ScreenUtils.screenHeight(context)),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Insights',
              style: TextStyle(
                  fontSize: (24 / 932) * ScreenUtils.screenHeight(context),
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                  borderRadius: BorderRadius.circular(16)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'User, you have gained more points this week so far compared to last week. Great Work!',
                  style: TextStyle(
                      fontSize: (15 / 932) * ScreenUtils.screenHeight(context)),
                ),
              ),
            ),
            SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildPointsWidget(
                    'Week Points', '250', 'Dec 25 - Today', Color(0xffAD4E19),context),
                _buildPointsWidget(
                    'Streaks', '7', 'Dec 18 - 24', Color(0xffAD4E19),context),
              ],
            ),
            SizedBox(height: (64 / 932) * ScreenUtils.screenHeight(context)),
            Center(
              child: Text(
                'Weekly Points',
                style: TextStyle(
                    fontSize: (14 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.bold,
                    color: Color(0xffAD4E19)),
              ),
            ),
            SizedBox(height: (32 / 932) * ScreenUtils.screenHeight(context)),
            Container(
              height: (224 / 932) * ScreenUtils.screenHeight(context),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceAround,
                  maxY: 100,
                  barTouchData: BarTouchData(enabled: false),
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) => Text(
                          [
                            'SAT',
                            'SUN',
                            'MON',
                            'TUE',
                            'WED',
                            'THU',
                            'FRI'
                          ][value.toInt()],
                          style: TextStyle(color: Colors.black, fontSize: (12 / 932) * ScreenUtils.screenHeight(context)),
                        ),
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: (value, meta) => Text(
                          value.toInt().toString(),
                          style: TextStyle(color: Colors.black, fontSize: (12 / 932) * ScreenUtils.screenHeight(context)),
                        ),
                      ),
                    ),
                    topTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                    rightTitles:
                        AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  ),
                  gridData: FlGridData(
                    show: true,
                    drawVerticalLine: false,
                    horizontalInterval: 25,
                    getDrawingHorizontalLine: (value) {
                      return FlLine(
                        color: Colors.grey.withOpacity(0.2),
                        strokeWidth: 1,
                      );
                    },
                  ),
                  borderData: FlBorderData(show: false),
                  barGroups: [
                    _buildBarGroup(0, 90),
                    _buildBarGroup(1, 85),
                    _buildBarGroup(2, 80),
                    _buildBarGroup(3, 65),
                    _buildBarGroup(4, 55),
                    _buildBarGroup(5, 45),
                    _buildBarGroup(6, 0),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPointsWidget(String title, String points, String dateRange,
      Color color, BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
            style: TextStyle(
                fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
                color: color,
            fontWeight: FontWeight.w600)),
        Padding(
          padding:  EdgeInsets.only(left: (25 / 932) *ScreenUtils.screenHeight(context)),
          child: Text(points,
              style: TextStyle(
                color: Color(0xffD19544),
                  fontSize: (24 / 932) * ScreenUtils.screenHeight(context),
                  fontWeight: FontWeight.w500),),
        ),
        Text(dateRange, style: TextStyle(fontSize: (14 / 932) * ScreenUtils.screenHeight(context), color: Colors.grey)),
      ],
    );
  }

  BarChartGroupData _buildBarGroup(int x, double y) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: Colors.orange,
          width: 16,
          borderRadius: BorderRadius.circular(4),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import 'package:silk_road/features/streak_screen/view/widgets.dart';

import 'insight_pop_up.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleSpacing: (-15 / 430) * ScreenUtils.screenWidth(context),
        leading: ArrowBackButton(onTap: () {
          Navigator.pop(context);
        }),
        title: Text(
          'Streak',
          style: TextStyle(
              fontSize: (33 / 932) * ScreenUtils.screenHeight(context),
              fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.all((17 / 432) * ScreenUtils.screenWidth(context)),
          child: Column(
            children: [
              SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: (200 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    GradientBorderContainer(
                      width: (150 / 430) * ScreenUtils.screenWidth(context),
                      height: (150 / 430) * ScreenUtils.screenWidth(context),
                      child: Container(
                        width: (150 / 430) * ScreenUtils.screenWidth(context),
                        height: (150 / 430) * ScreenUtils.screenWidth(context),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    Icon(Icons.local_fire_department,
                        color: Colors.orange,
                        size: (80 / 430) * ScreenUtils.screenWidth(context)),
                    Positioned(
                      bottom: 0,
                      child: Text(
                        '4',
                        style: TextStyle(
                            height: 0.6,
                            fontSize:
                                (64 / 430) * ScreenUtils.screenWidth(context),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: (20 / 932) * ScreenUtils.screenHeight(context)),
              Text(
                'Week Streak',
                style: TextStyle(
                    fontSize: (24 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w700),
              ),
              Text('You are doing really great, User!',
                  style: TextStyle(
                      height: 1,
                      fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                      fontWeight: FontWeight.w400,
                      color: Color.fromARGB((0.5 * 255).toInt(), 69, 69, 69))),
              SizedBox(height: (24 / 932) * ScreenUtils.screenHeight(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  for (var (index, day)
                      in ['M', 'T', 'W', 'T', 'F', 'S', 'S'].indexed)
                    _buildDayItem(day, index < 4, context),
                ],
              ),
              SizedBox(height: (20 / 932) * ScreenUtils.screenHeight(context)),
              const StatsSection(),
              SizedBox(height: (24 / 932) * ScreenUtils.screenHeight(context)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Challenges',
                    style: TextStyle(
                        fontSize:
                            (24 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w500,
                  ),),Text(
                    'XP',
                    style: TextStyle(
                        fontSize:
                            (24 / 932) * ScreenUtils.screenHeight(context),
                        fontWeight: FontWeight.w500,
                  ),),
                ],
              ),
              SizedBox(height: (16 / 932) * ScreenUtils.screenHeight(context)),
              _buildChallengeItem('Take a Track Assessment Quiz', true, '25',context),
              _buildChallengeItem('Start a Discussion', false, '20',context),
              _buildChallengeItem('Finish one Learning Course', false, '50',context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDayItem(String day, bool isCompleted, BuildContext context) {
    return Column(
      children: [
        Text(day,
            style: TextStyle(
                fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                color: Colors.black54)),
        const SizedBox(height: 5),
        Container(
          width: (35 / 932) * ScreenUtils.screenHeight(context),
          height: (35 / 932) * ScreenUtils.screenHeight(context),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: isCompleted
                ? const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [Color(0xFFFF7324), Color(0xFF994516)],
                    stops: [0.26, 1.0],
                  )
                : null,
            color: isCompleted ? null : Colors.transparent,
          ),
          child: Center(
            child: isCompleted
                ? Icon(Icons.check,
                    color: Colors.white,
                    size: (20 / 932) * ScreenUtils.screenHeight(context))
                : Text(
                    day == 'F' ? '29' : (day == 'S' ? '30' : ''),
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize:
                            (22 / 932) * ScreenUtils.screenHeight(context)),
                  ),
          ),
        ),
      ],
    );
  }

  Widget _buildChallengeItem(String title, bool completed, String xp, BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: (4 / 932) * ScreenUtils.screenHeight(context)),
      child: Row(
        children: [
          Container(
            width: (35 / 932) * ScreenUtils.screenHeight(context),
            height: (35 / 932) * ScreenUtils.screenHeight(context),
            decoration: BoxDecoration(
              border: completed ? null : Border.all(color:Color(0xffDF6520),width: 2 ),
              shape: BoxShape.circle,
              gradient: completed
                  ? const LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color(0xFFFF7324), Color(0xFF994516)],
                stops: [0.26, 1.0],
              )
                  : null,
              color: completed ? null : Colors.transparent,
            ),
            child: Center(
              child: completed
                  ? Icon(Icons.check,
                  color: Colors.white,
                  size: (20 / 932) * ScreenUtils.screenHeight(context))
                  : Text("")
            ),
          ),
          const SizedBox(width: 10),
          Expanded(child: Text(title)),
          Text('$xp ', style: const TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}







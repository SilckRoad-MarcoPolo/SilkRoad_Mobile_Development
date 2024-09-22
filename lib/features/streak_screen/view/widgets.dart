import 'package:flutter/material.dart';

import '../../../core/helpers/screen_utils.dart';
import 'insight_pop_up.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: ScreenUtils.screenWidth(context) * 0.99,
          height: ScreenUtils.screenHeight(context) * 0.228,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF994516),
                Color(0xFFFF7324),
              ],
              stops: [0.26, 1.0],
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.only(
                  top: (8 / 932) * ScreenUtils.screenHeight(context)),
              child: Text(
                'Your Stats',
                style: TextStyle(
                    fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: ScreenUtils.screenHeight(context) * (5 / 932),
          child: Container(
            width: ScreenUtils.screenWidth(context) * 0.90,
            height: ScreenUtils.screenHeight(context) * 0.18,
            padding:
            EdgeInsets.all((16 / 932) * ScreenUtils.screenHeight(context)),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              children: [
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildStatItem('Days', '22', context),
                    _buildVerticalDivider(context),
                    _buildStatItem('Badges', '5', context),
                    _buildVerticalDivider(context),
                    _buildStatItem('Quizzes', '18', context),
                  ],
                ),
                const SizedBox(height: 10),
                Padding(
                  padding: EdgeInsetsDirectional.symmetric(
                      horizontal:
                      (30 / 430) * ScreenUtils.screenWidth(context)),
                  child: Align(
                    alignment: AlignmentDirectional.centerStart,
                    child: ElevatedButton(
                      onPressed: () {
                        showGeneralDialog(
                          barrierDismissible: true,
                          barrierLabel: "",
                          context: context,
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                          const InsightsPopup(),
                          transitionBuilder:
                              (context, animation, secondaryAnimation, child) {
                            var curve = Curves.easeInOut;
                            var tween = Tween(
                                begin: const Offset(0, 1),
                                end: const Offset(0, 0.15))
                                .chain(CurveTween(curve: curve));
                            return SlideTransition(
                              position: animation.drive(tween),
                              child: child,
                            );
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          padding: EdgeInsetsDirectional.symmetric(
                              horizontal: (60 / 430) *
                                  ScreenUtils.screenWidth(context))),
                      child: Text('Insights',
                          style: TextStyle(
                              height: 1,
                              fontSize: (18 / 932) *
                                  ScreenUtils.screenHeight(context),
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(
                                  (0.5 * 255).toInt(), 69, 69, 69))),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildStatItem(String label, String value, BuildContext context) {
    return Column(
      children: [
        Text(label,
            style: TextStyle(
                fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                color: const Color(0xff8B8E8E),
                fontWeight: FontWeight.w600)),
        Text(value,
            style: TextStyle(
                fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
                fontWeight: FontWeight.w500)),
      ],
    );
  }

  Widget _buildVerticalDivider(BuildContext context) {
    return Container(
      height: (40 / 932) * ScreenUtils.screenHeight(context),
      width: 1,
      color: Colors.black26,
    );
  }
}
class GradientBorderContainer extends StatelessWidget {
  final double width;
  final double height;
  final Widget? child;

  const GradientBorderContainer({
    Key? key,
    required this.width,
    required this.height,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(width, height),
      painter: GradientBorderPainter(),
      child: Container(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}
class GradientBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromCircle(
      center: Offset(size.width / 2, size.height / 2),
      radius: size.width / 2,
    );

    final Paint paint = Paint()
      ..shader = const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [Color(0xFF994516), Color(0xFFFF7324)],
        stops: [0.1, 1.0],
      ).createShader(rect)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3;

    canvas.drawCircle(
      Offset(size.width / 2, size.height / 2),
      size.width / 2 - paint.strokeWidth / 2,
      paint,
    );
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

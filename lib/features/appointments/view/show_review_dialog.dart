import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';

void showReviewDialog(BuildContext context) {
  double rating = 4.0; // Initial rating value

  Navigator.of(context).push(
    PageRouteBuilder(
      barrierDismissible: true,
      barrierColor: Colors.black.withOpacity(0.5),
      opaque: false,
      transitionDuration: const Duration(milliseconds: 300),
      pageBuilder: (BuildContext context, _, __) {
        return SlideReviewDialog(rating: rating);
      },
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset(0.0, 0.0);
        const curve = Curves.easeInOut;

        var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        var offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    ),
  );
}

class SlideReviewDialog extends StatefulWidget {
  final double rating;

  const SlideReviewDialog({Key? key, required this.rating}) : super(key: key);

  @override
  _SlideReviewDialogState createState() => _SlideReviewDialogState();
}

class _SlideReviewDialogState extends State<SlideReviewDialog> {
  late double rating;

  @override
  void initState() {
    super.initState();
    rating = widget.rating; // Set the initial rating value
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      contentPadding: const EdgeInsets.all(16.0),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Rate Mentor',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
            ),
            SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
            Image.asset(
              "assets/images/temp_profile_photo.png",
              // Placeholder image URL
              width: (85 / 430) * ScreenUtils.screenWidth(context),
              height: (90 / 430) * ScreenUtils.screenWidth(context),
            ),
            SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),
            Text(
              'Ahmed Mohamed',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: (20 / 932) * ScreenUtils.screenHeight(context),
              ),
            ),
            Text(
              'Specialization',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: (15 / 932) * ScreenUtils.screenHeight(context),
                  color: const Color(0xffD89A46)),
            ),
            SizedBox(height: (10 / 932) * ScreenUtils.screenHeight(context)),

            // Interactive Rating Bar
            RatingBar.builder(

              glow: false,
              initialRating: rating,
              minRating: 1,
              direction: Axis.horizontal,
              allowHalfRating: true,
              itemCount: 5,
              itemPadding: const EdgeInsets.symmetric(horizontal: 3.0),
              itemBuilder: (context, _) => Icon(
                size: (18 / 932) * ScreenUtils.screenHeight(context),
                Icons.star,
                color: Colors.amber,
              ),
              onRatingUpdate: (newRating) {
                setState(() {
                  rating = newRating;
                });
              },
            ),

            SizedBox(height: (21 / 932) * ScreenUtils.screenHeight(context)),
            Text(
              'Nice Experience!',
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: (18 / 932) * ScreenUtils.screenHeight(context),
                  color: const Color(0xff515151)),
            ),
            SizedBox(height: (24 / 932) * ScreenUtils.screenHeight(context)),
            Container(
              width: (354 / 430) * ScreenUtils.screenWidth(context),
              height: (136 / 932) * ScreenUtils.screenHeight(context),
              decoration: BoxDecoration(
                  color: const Color(0xffF6F6F6),
                  borderRadius: BorderRadius.circular(16)),
              child: const TextField(
                maxLines: 10,
                decoration: InputDecoration(
                  hintText: 'Type your review...',
                  hintStyle: TextStyle(color: Colors.grey),
                  isDense: true,
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(12),
                ),
              ),
            ),
            SizedBox(height: (24 / 932) * ScreenUtils.screenHeight(context)),
            CustomButton(text: "Submit"),
          ],
        ),
      ),
    );
  }
}

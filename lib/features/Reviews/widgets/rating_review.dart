import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class RatingSummary extends StatelessWidget {
  const RatingSummary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '3.6',
                  style: TextStyle(
                      fontSize: ScreenUtils.screenHeight(context) * (32 / 932),
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 7.0),
                  child: Text(
                    '/4',
                    style: TextStyle(
                        fontSize:
                            ScreenUtils.screenHeight(context) * (18 / 932),
                        fontWeight: FontWeight.w700,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            Text(
              '100 Reviews',
              style: TextStyle(
                  fontSize: ScreenUtils.screenHeight(context) * (16 / 932)),
            ),
          ],
        ),
        SizedBox(
          width: (22 / 462) * ScreenUtils.screenWidth(context),
        ),
        Column(
          children: [
            buildRatingRow(5, 70),
            buildRatingRow(4, 5),
            buildRatingRow(3, 8),
            buildRatingRow(2, 2),
          ],
        )
      ],
    );
  }

  // Helper function to create each row for the star rating distribution
  Widget buildRatingRow(int starCount, int reviewCount) {
    return Container(
      width: 244,
      child: Row(
        children: [
          RatingBarIndicator(
            rating: starCount.toDouble(),
            itemBuilder: (context, index) => const Icon(
              Icons.star,
              color: Colors.amber,
            ),
            itemCount: 5, // Max 5 stars to display
            itemSize: 22.0,
            direction: Axis.horizontal,
          ),
          const SizedBox(width: 10),
          Expanded(
            child: LinearProgressIndicator(
              value:
                  reviewCount / 100, // Adjust this value based on total reviews
              backgroundColor: Colors.grey[300],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            '$reviewCount',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}

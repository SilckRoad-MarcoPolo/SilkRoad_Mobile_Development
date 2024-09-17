import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';

class GoogleButton extends StatelessWidget {
  const GoogleButton({super.key, this.onTap});
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: (44 / 932) * ScreenUtils.screenHeight(context),
        width: (398 / 414) * ScreenUtils.screenWidth(context),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black, 
         
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Row(
          children: [
            Padding(
              padding:  EdgeInsets.only(left:(16 / 414) * ScreenUtils.screenWidth(context) ),
              child: Image.asset(
                'assets/images/google_icon/download.png',
                height: 24,
              ),
            ),
            SizedBox(
              width: (64 / 414) * ScreenUtils.screenWidth(context),
            ),
            Text(
              'Continue with Google',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../../core/helpers/screen_utils.dart';
import '../../../core/shared_components/widgets/password_reset_text.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';

class OtpVerification extends StatelessWidget {
  const OtpVerification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: (60 / 932) * ScreenUtils.screenHeight(context),
          ),
          const ArrowBackButton(),
          PasswordResetText(
            title: "OTP Verification",
            description: "A process of generating a unique code and  \n"
                "sending it to a user's specified phone number \n"
                "or email address for verification",
            logo: "assets/images/reset_password/key.png",
          ),
          SizedBox(
            height: (50 / 932) * ScreenUtils.screenHeight(context),
          ),
        ],
      ),
    );
  }
}

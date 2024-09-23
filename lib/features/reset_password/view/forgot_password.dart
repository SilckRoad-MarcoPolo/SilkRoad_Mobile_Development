import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';
import 'package:silk_road/features/reset_password/view/otp_verification.dart';
import '../logic/forgot_password_cubit/forgotpassword_cubit.dart';
import '../../../core/shared_components/custom_button.dart';
import '../../../core/shared_components/custom_text_field.dart';
import '../../../core/shared_components/widgets/shared_buttons.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForgotPasswordCubit(), // Provide ForgotPasswordCubit here
      child:
          ForgotPasswordBody(), // Move the rest of the UI into a separate widget
    );
  }
}

class ForgotPasswordBody extends StatefulWidget {
  const ForgotPasswordBody({super.key});

  @override
  State<ForgotPasswordBody> createState() => _ForgotPasswordBodyState();
}

class _ForgotPasswordBodyState extends State<ForgotPasswordBody> {
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TextEditingController _emailController =
      TextEditingController(); // Email controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<ForgotPasswordCubit, ForgotPasswordState>(
        listener: (context, state) {
          if (state is ForgotPasswordFailure) {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text("Error"),
                  content: Text(state.error),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text("OK"),
                    ),
                  ],
                );
              },
            );
          } else if (state is ForgotPasswordSuccess) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const OtpVerification(),
              ),
            );
          }
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/images/reset_password/first.png",
                      width: 0.55 * ScreenUtils.screenWidth(context),
                    ),
                    Positioned(
                      top: (60 / 932) * ScreenUtils.screenHeight(context),
                      child: ArrowBackButton(
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: PasswordResetText(
                        title: "Forgot Password?",
                        description:
                            "Enter your email address below, and we'll send \n"
                            "you a One-Time Password (OTP) to reset your \n"
                            "password. If you don't see the email, please\n"
                            "check your spam folder",
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: (50 / 932) * ScreenUtils.screenHeight(context),
              ),
              Image.asset(
                "assets/images/reset_password/lock.png",
                width: (92.22 / 430) * ScreenUtils.screenWidth(context),
                height: (75.23 / 932) * ScreenUtils.screenHeight(context),
              ),
              SizedBox(
                height: (32 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: (16 / 432) * ScreenUtils.screenWidth(context)),
                child: Form(
                  key: _formKey, // Form key for validation
                  child: CustomTextFormField(
                    controller: _emailController, // Email controller
                    hintText: 'Email',
                    validate: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter your email';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              SizedBox(
                height: (115 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: (16 / 430) * ScreenUtils.screenWidth(context),
                  right: (16 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: CustomButton(
                  text: "Send",
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // Access the ForgotPasswordCubit inside the BlocProvider's context
                      BlocProvider.of<ForgotPasswordCubit>(context)
                          .sendPasswordResetEmail(
                              context, _emailController.text);
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

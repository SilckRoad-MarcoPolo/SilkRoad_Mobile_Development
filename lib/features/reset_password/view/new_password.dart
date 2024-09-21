import 'package:flutter/material.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscurePassword = !_obscurePassword;
    });
  }

  void _toggleConfirmPasswordVisibility() {
    setState(() {
      _obscureConfirmPassword = !_obscureConfirmPassword;
    });
  }

  void _confirmNewPassword() {
    if (_formKey.currentState!.validate()) {
      final password = _passwordController.text;
      final confirmPassword = _confirmPasswordController.text;

      if (password == confirmPassword) {
        debugPrint("New password set successfully!");
        // Add logic to handle new password confirmation
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Passwords do not match')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenUtils.screenHeight(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: (60 / 932) * ScreenUtils.screenHeight(context),
              ),
              ArrowBackButton(onTap: () {
                Navigator.pop(context);
              }),
              PasswordResetText(
                title: "New Password",
                description: "Your new password must be different \n"
                    "from the previously used passwords",
              ),
              SizedBox(
                height: (109 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (16 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      CustomTextFormField(
                        controller: _passwordController,
                        obscureText: _obscurePassword,
                        hintText: "Password",
                        suffixIcon: IconButton(
                          icon: Icon(_obscurePassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: _togglePasswordVisibility,
                        ),
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your password';
                          } else if (value.length < 8) {
                            return 'Password must be at least 8 characters long';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: (56 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        controller: _confirmPasswordController,
                        obscureText: _obscureConfirmPassword,
                        hintText: "Confirm Password",
                        suffixIcon: IconButton(
                          icon: Icon(_obscureConfirmPassword
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: _toggleConfirmPasswordVisibility,
                        ),
                        validate: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please confirm your password';
                          }
                          return null;
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: (72 / 932) * ScreenUtils.screenHeight(context),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: (16 / 430) * ScreenUtils.screenWidth(context),
                ),
                child: CustomButton(
                  text: "Confirm",
                  onTap: _confirmNewPassword,
                ),
              ),
              const Spacer(),
              Image.asset(
                "assets/images/new_password_back.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

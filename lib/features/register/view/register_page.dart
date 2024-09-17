import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  bool _rememberMe = false;
  bool isSwitched = false;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: ScreenUtils.screenWidth(context) * (14 / 462),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: (75 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      Text('Sign Up',
                          style: TextStyle(
                              fontSize: 32,
                              color: Colors.black,
                              fontWeight: FontWeight.w500)),
                      SizedBox(
                        height: (25 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        hintText: 'First Name',
                      ),
                      SizedBox(
                        height: (25 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        hintText: 'Last Name',
                      ),
                      SizedBox(
                        height: (25 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        hintText: 'Email',
                      ),
                      SizedBox(
                        height: (25 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        hintText: 'PassWord',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      SizedBox(
                        height: (25 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomTextFormField(
                        hintText: 'Confirm PassWord',
                        suffixIcon: IconButton(
                          icon: Icon(
                            _obscureText
                                ? Icons.visibility
                                : Icons.visibility_off,
                          ),
                          onPressed: _togglePasswordVisibility,
                        ),
                      ),
                      SizedBox(
                        height: (43 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      CustomButton(text: 'Sign in'),
                      Center(
                          child: Text(
                        'or',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      )),
                      GoogleButton(),
                      SizedBox(
                        height: (11 / 932) * ScreenUtils.screenHeight(context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'I already have an account?',
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Text(
                              ' Sign in',
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ]),
              ),
              Image.asset('assets/images/auth/Group 481593.png'),
            ],
          ),
        ));
  }
}

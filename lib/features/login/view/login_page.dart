import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';
import 'package:silk_road/features/register/view/register_page.dart';
import 'package:silk_road/features/reset_password/view/forgot_password.dart';

import '../../../core/shared_components/BottomNavigationBa.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool isSwitched = false;
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // This function will handle the sign-in logic
  void signIn(String email, String password) {
    debugPrint("Email: $email, Password: $password");
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
                horizontal: ScreenUtils.screenHeight(context) * (14 / 462),
              ),
              child: Form(
                key: _formKey, // Wrap with Form widget
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: (90 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    const Text(
                      'Welcome',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const Text(
                      'Back',
                      style: TextStyle(
                        fontSize: 32,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: (90 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _emailController, // Assign the controller
                      hintText: 'Email',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // You can add more email validation here
                        return null;
                      },
                    ),
                    SizedBox(
                      height: (45 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _passwordController, // Assign the controller
                      hintText: 'Password',
                      obscureText: _obscureText, // Show/hide password
                      suffixIcon: IconButton(
                        icon: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
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
                      height: (17 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              right: (6 / 414) *
                                  ScreenUtils.screenWidth(context)),
                          child: Container(
                            height: 25,
                            width: 42,
                            child: FittedBox(
                              fit: BoxFit.fill,
                              child: Switch(
                                value: isSwitched,
                                onChanged: (value) {
                                  setState(() {
                                    isSwitched = value;
                                  });
                                },
                                activeColor: kOrange,
                                inactiveThumbColor: kOrange,
                                inactiveTrackColor: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        const Text('Remember me'),
                        SizedBox(
                          width: (90 / 414) * ScreenUtils.screenWidth(context),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const ForgotPassword()));
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                                color: kOrange,
                                fontSize: (14 / 430) *
                                    ScreenUtils.screenWidth(context)),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (110 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomButton(
                      text: 'Sign in',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, call the signIn function
                          signIn(_emailController.text, _passwordController.text);
                        }
                      },
                    ),
                    const Center(
                      child: Text(
                        'or',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                    ),
                    const GoogleButton(),
                    SizedBox(
                      height: (11 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const RegisterPage()));
                          },
                          child: const Text(
                            ' Sign up',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: (35 / 932) * ScreenUtils.screenHeight(context),
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/auth/Group 481592 (1).png'),
          ],
        ),
      ),
    );
  }
}

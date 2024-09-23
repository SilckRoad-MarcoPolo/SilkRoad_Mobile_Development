import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';
import 'package:silk_road/features/register/view/register_page.dart';
import 'package:silk_road/features/reset_password/view/forgot_password.dart';
import 'package:dio/dio.dart';
import '../../../core/shared_components/BottomNavigationBa.dart';
import '../../mentor_home/views/bottom_nav_mentor.dart';
import '../logic/cubit/login_cubit.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  bool isSwitched = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: BlocListener<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state is LoginFailure) {
              // Show snackbar on failure
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage)),
              );
            }
          },
          child: BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return Stack(
                children: [
                  SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal:
                            ScreenUtils.screenHeight(context) * (14 / 462),
                      ),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: (90 / 932) *
                                  ScreenUtils.screenHeight(context),
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
                              height: (90 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                            CustomTextFormField(
                              controller: _emailController,
                              hintText: 'Email',
                              validate: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your email';
                                }
                                return null;
                              },
                            ),
                            SizedBox(
                              height: (45 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                            CustomTextFormField(
                              controller: _passwordController,
                              hintText: 'Password',
                              obscureText: _obscureText,
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
                              height: (17 / 932) *
                                  ScreenUtils.screenHeight(context),
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
                                const Spacer(),
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
                              height: (110 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                            CustomButton(
                              text: 'Sign in',
                              onTap: () {
                                if (_formKey.currentState!.validate()) {
                                  if (_emailController.text ==
                                      'yosef@silkroad.com') {
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BOttomNavMentor()));
                                  } else {
                                    context.read<LoginCubit>().signIn(
                                          context,
                                          _emailController.text,
                                          _passwordController.text,
                                        );
                                  }
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
                              height: (11 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  'Don’t have an account?',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 16),
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
                              height: (35 / 932) *
                                  ScreenUtils.screenHeight(context),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  if (state is LoginLoading)
                    Container(
                      color: Colors.black.withOpacity(0.5),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}

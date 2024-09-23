import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:silk_road/core/shared_components/BottomNavigationBa.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/widgets/password_reset_text.dart';
import 'package:silk_road/core/shared_components/widgets/shared_buttons.dart';
import '../logic/new_password_cubit/new_password_cubit.dart'; // Import the cubit

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => NewPasswordCubit(), // Provide NewPasswordCubit
      child: NewPasswordBody(),
    );
  }
}

class NewPasswordBody extends StatefulWidget {
  const NewPasswordBody({super.key});

  @override
  State<NewPasswordBody> createState() => _NewPasswordBodyState();
}

class _NewPasswordBodyState extends State<NewPasswordBody> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<NewPasswordCubit, NewPasswordState>(
        listener: (context, state) {
          if (state is NewPasswordSuccess) {
            // Show success message and navigate to login
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('New password set successfully!')),
            );
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => BOttomNavigationBar()));
          } else if (state is NewPasswordFailure) {
            // Show error message
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
          }
        },
        child: SingleChildScrollView(
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
                          controller: _emailController,
                          hintText: "Email",
                          validate: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                .hasMatch(value)) {
                              return 'Please enter a valid email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height:
                              (16 / 932) * ScreenUtils.screenHeight(context),
                        ),
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
                          height:
                              (16 / 932) * ScreenUtils.screenHeight(context),
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
                    onTap: () {
                      if (_formKey.currentState!.validate()) {
                        // Trigger password confirmation via the cubit
                        BlocProvider.of<NewPasswordCubit>(context)
                            .confirmNewPassword(
                          _emailController.text,
                          _passwordController.text,
                          _confirmPasswordController.text,
                        );
                      }
                    },
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
      ),
    );
  }
}

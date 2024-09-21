import 'package:flutter/material.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';
import 'package:silk_road/features/login/view/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _obscureText = true;
  final _formKey = GlobalKey<FormState>(); // Form key for validation
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
  TextEditingController();

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  // Function to handle sign-up logic
  void signUp(String firstName, String lastName, String email, String password) {
    debugPrint(
        "First Name: $firstName, Last Name: $lastName, Email: $email, Password: $password");
    // Add the signup logic here
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
              child: Form(
                key: _formKey, // Assign form key
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: (75 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    const Text(
                      'Sign Up',
                      style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: (25 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _firstNameController, // First Name controller
                      hintText: 'First Name',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your first name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: (25 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _lastNameController, // Last Name controller
                      hintText: 'Last Name',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your last name';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: (25 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _emailController, // Email controller
                      hintText: 'Email',
                      validate: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your email';
                        }
                        // You can add additional email validation here
                        return null;
                      },
                    ),
                    SizedBox(
                      height: (25 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _passwordController, // Password controller
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
                      height: (25 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomTextFormField(
                      controller: _confirmPasswordController, // Confirm Password controller
                      hintText: 'Confirm Password',
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
                          return 'Please confirm your password';
                        } else if (value != _passwordController.text) {
                          return 'Passwords do not match';
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: (43 / 932) * ScreenUtils.screenHeight(context),
                    ),
                    CustomButton(
                      text: 'Sign up',
                      onTap: () {
                        if (_formKey.currentState!.validate()) {
                          // If the form is valid, call the signUp function
                          signUp(
                            _firstNameController.text,
                            _lastNameController.text,
                            _emailController.text,
                            _passwordController.text,
                          );
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
                          'I already have an account?',
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginPage(),
                              ),
                            );
                          },
                          child: const Text(
                            ' Sign in',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Image.asset('assets/images/auth/Group 481593.png'),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:silk_road/core/constants.dart';
import 'package:silk_road/core/helpers/screen_utils.dart';
import 'package:silk_road/core/shared_components/custom_button.dart';
import 'package:silk_road/core/shared_components/custom_text_field.dart';
import 'package:silk_road/core/shared_components/google_button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              horizontal: ScreenUtils.screenHeight(context) * (14 / 462),
                ),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                              SizedBox(
                height: (90 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              Text('Welcome',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
                              Text('Back',
                  style: TextStyle(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
                              SizedBox(
                height: (90 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              CustomTextFormField(
                hintText: 'Email',
                              ),
                              SizedBox(
                height: (45 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              CustomTextFormField(
                hintText: 'PassWord',
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscureText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: _togglePasswordVisibility,
                ),
                              ),
                              SizedBox(
                height: (17 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        right: (6 / 414) * ScreenUtils.screenWidth(context)),
                    child: Container(
                      height: 25,
                      width:
                          42, 
                      child: FittedBox(
                        fit: BoxFit
                            .fill, 
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
                  Text('Remember me'),
                  SizedBox(
                    width: (90 / 414) * ScreenUtils.screenWidth(context),
                  ),
                  GestureDetector(
                    onTap: () {
                      // Handle forgot password action
                    },
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(color: kOrange, fontSize: 14),
                    ),
                  ),
                ],
                              ),
                              SizedBox(
                height: (110 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              CustomButton(text: 'Sign in'),
                              Center(
                  child: Text(
                'or',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                              )),
                              GoogleButton(),
                              SizedBox(
                height: (11 / 932) * ScreenUtils.screenHeight(context),
                              ),
                              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Dont have an account?',
                    style: TextStyle(color: Colors.grey,fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
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
                             
                
                            ]),
              ),
                           Image.asset('assets/images/auth/Group 481592 (1).png'),
            ],
            
          ),
        ));
  }
}

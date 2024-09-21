import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key,
        this.controller,
      this.hintText,
      this.onChanged,
      this.suffixIcon,
      this.validate,
      this.obscureText = false});
  String? hintText;
  Widget? suffixIcon;

  bool? obscureText;
  TextEditingController? controller;
  Function(String)? onChanged;
  String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
        obscureText: obscureText!,
        validator: validate,
        onChanged: onChanged,
        decoration: InputDecoration(
            suffixIcon: suffixIcon,
            hintText: hintText,
            hintStyle:
                TextStyle(color: Colors.black, fontWeight: FontWeight.w400)));
  }
}

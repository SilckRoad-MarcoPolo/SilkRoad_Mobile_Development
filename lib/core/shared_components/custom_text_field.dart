import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    this.controller,
    this.hintText,
    this.onChanged,
    this.suffixIcon,
    this.validate,
    this.obscureText = false,
    this.isEditable = true, // New optional field
  });

  String? hintText;
  Widget? suffixIcon;
  bool? obscureText;
  TextEditingController? controller;
  Function(String)? onChanged;
  String? Function(String?)? validate;
  bool
      isEditable; // New variable to control whether the field is editable or not

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText!,
      validator: validate,
      onChanged: onChanged,
      enabled:
          isEditable, // Enable or disable the field based on the isEditable flag
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w400),
      ),
    );
  }
}

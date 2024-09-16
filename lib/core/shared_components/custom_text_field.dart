import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomTextFormField extends StatelessWidget {
  CustomTextFormField(
      {super.key, this.hintText, this.onChanged, this.suffixIcon,this.validate,this.obscureText =false});
  String? hintText;
      Widget? suffixIcon;
      
    bool?  obscureText;
  
  Function(String)? onChanged;
  String? Function(String?)? validate;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
        validator: validate,
        onChanged: onChanged,
        decoration: InputDecoration(
          suffixIcon:suffixIcon ,
           
            hintText: hintText,
            hintStyle: TextStyle(color: Colors.black)));
  }
}

import 'package:flutter/material.dart';

class ArrowBackButton extends StatelessWidget {
  VoidCallback onTap;
  ArrowBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return IconButton(onPressed: onTap, icon: const Icon(Icons.arrow_back_ios));
  }
}

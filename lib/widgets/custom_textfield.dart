import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.keyboardType,
  });
  final String hintText;
  TextEditingController controller;
  TextInputType keyboardType;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 150,
      decoration: containerDecoration,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 10,
        ),
        child: TextField(
          cursorColor: Colors.grey,
          keyboardType: keyboardType,
          controller: controller,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(
              left: 8,
              right: 8,
              bottom: 12,
            ),
            hintText: hintText,
            hintStyle: const TextStyle(
              letterSpacing: 0.6,
              color: Colors.grey,
              fontSize: 10.0,
              fontWeight: FontWeight.w300,
            ),
            border: InputBorder.none,
          ),
          style: const TextStyle(
            letterSpacing: 0.6,
            color: Colors.grey,
            fontSize: 10.0,
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }
}

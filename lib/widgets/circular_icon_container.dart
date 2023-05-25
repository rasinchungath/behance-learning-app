import 'package:flutter/material.dart';
import '../constants/constants.dart';

class CircularContainer extends StatelessWidget {
  CircularContainer({super.key, required this.icon, required this.onPressed});
  IconData icon;
  VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: border,
        ),
        child: Icon(
          icon,
          size: 21,
          color: Colors.grey.shade800,
        ),
      ),
    );
  }
}

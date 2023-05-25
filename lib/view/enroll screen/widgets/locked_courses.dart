import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockedCourses extends StatelessWidget {
  const LockedCourses({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: const TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.w500,
            color: Colors.grey,
          ),
        ),
        const Icon(
          Icons.lock,
          size: 15,
        )
      ],
    );
  }
}

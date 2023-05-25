import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class BottomRoundContainer extends StatelessWidget {
  BottomRoundContainer({super.key, required this.icon, required this.text});
  final String text;
  IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: border,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Icon(
              icon,
              size: 15,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(
              text,
              style: kRatingTextStyle,
            )
          ],
        ),
      ),
    );
  }
}

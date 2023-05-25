import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class HourRatingWidgets extends StatelessWidget {
  HourRatingWidgets(
      {super.key,
      required this.icon1,
      required this.text1,
      required this.icon2,
      required this.text2,
      this.color});
  final String text1;
  IconData icon1;
  final String text2;
  IconData icon2;
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon1,
          size: 18,
          color: Colors.black,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text1,
          style: kRatingTextStyle,
        ),
        const SizedBox(
          width: 8,
        ),
        Icon(
          icon2,
          size: 18,
          color: color ?? Colors.black,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text2,
          style: kRatingTextStyle,
        )
      ],
    );
  }
}

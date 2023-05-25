import 'package:flutter/material.dart';
import '../../../constants/constants.dart';

class AboutCourseContainer extends StatelessWidget {
  const AboutCourseContainer({super.key, required this.title, required this.description});
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: containerDecoration,
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              title,
              style: kCardTitleTextStyle,
            ),
            Text(
             description,
              style: const TextStyle(
                fontSize: 9,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

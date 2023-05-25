import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import 'hour_rating_widgets.dart';
import 'locked_courses.dart';

class CoursesContainer extends StatelessWidget {
  const CoursesContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Container(
        width: double.infinity,
        decoration: containerDecoration,
        child: ExpansionTile(
          iconColor: Colors.black,
          collapsedIconColor: Colors.black,
          shape: const Border(),
          tilePadding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          childrenPadding: const EdgeInsets.only(
            left: 15,
            right: 15,
            bottom: 15,
          ),
          title: const Text(
            'Introduction to Midjourney',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
          subtitle: HourRatingWidgets(
            icon1: Icons.video_call_rounded,
            text1: '4 Videos',
            icon2: Icons.access_time,
            text2: '80h:30min',
          ),
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Midjourney Cousre Introduction',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Container(
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kprimaryColor,
                  ),
                  child: const Padding(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 10, right: 10),
                    child: Text(
                      'Preview',
                      style: TextStyle(
                        fontSize: 8,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const LockedCourses(
              text: 'Introduction to Midjourney',
            ),
            const SizedBox(
              height: 5,
            ),
            const LockedCourses(
              text: 'How to subscribe to Midjourney',
            ),
            const SizedBox(
              height: 5,
            ),
            const LockedCourses(
              text: 'Getting Started with Midjourney',
            ),
          ],
        ),
      ),
    );
  }
}
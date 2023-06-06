import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constants.dart';
import '../../../controller/theme_controller.dart';
import 'hour_rating_widgets.dart';
import 'locked_courses.dart';

class CoursesContainer extends StatelessWidget {
  CoursesContainer(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.videoCount,
      required this.time});
  String title;
  String subTitle;
  int videoCount;
  String time;
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
        right: 15,
        bottom: 15,
      ),
      child: Obx(
        () => Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            border: Border.all(
              width: 1.5,
              color: themeController.isDarkMode.value
                  ? Colors.white38
                  : Colors.grey.shade200,
            ),
          ),
          child: ExpansionTile(
            iconColor:
                themeController.isDarkMode.value ? Colors.white : Colors.black,
            collapsedIconColor:
                themeController.isDarkMode.value ? Colors.white : Colors.black,
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
            title: Text(
              title,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                fontFamily: 'Poppins',
                color: themeController.isDarkMode.value
                    ? Colors.white
                    : Colors.black,
              ),
            ),
            subtitle: HourRatingWidgets(
              icon1: Icons.video_call_rounded,
              text1: '$videoCount Videos',
              icon2: Icons.access_time,
              text2: time,
            ),
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    subTitle,
                    style: const TextStyle(
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
                      padding: EdgeInsets.only(
                          top: 5, bottom: 5, left: 10, right: 10),
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
      ),
    );
  }
}

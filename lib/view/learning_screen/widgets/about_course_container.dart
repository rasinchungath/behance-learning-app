import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../../../constants/constants.dart';
import 'read_more.dart';

class AboutCourseContainer extends StatelessWidget {
   AboutCourseContainer(
      {super.key, required this.title, required this.description});
  final String title;
  final String description;

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
      width: double.infinity,
      decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                width: 1.5,
                color: themeController.isDarkMode.value
                    ? Colors.white38
                    : Colors.grey.shade200,
              ),
            ),
      child: Padding(
        padding:
            const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: kCardTitleTextStyle,
            ),
            DescriptionTextWidget(
              text: description,
            ),
          ],
        ),
      ),
    ),);
  }
}

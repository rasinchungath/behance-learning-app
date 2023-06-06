import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/theme_controller.dart';

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

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(() => Row(
      children: [
        Icon(
          icon1,
          size: 18,
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text1,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            color: themeController.isDarkMode.value
                ? Colors.white
                : Colors.black54,
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Icon(
          icon2,
          size: 18,
          color: color ??
              (themeController.isDarkMode.value ? Colors.white : Colors.black),
        ),
        const SizedBox(
          width: 4,
        ),
        Text(
          text2,
          style: TextStyle(
            fontSize: 8,
            fontWeight: FontWeight.w600,
            color: themeController.isDarkMode.value
                ? Colors.white
                : Colors.black54,
          ),
        ),
      ],
    ),);
  }
}

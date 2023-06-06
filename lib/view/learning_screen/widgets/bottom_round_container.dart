import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../../../constants/constants.dart';

class BottomRoundContainer extends StatelessWidget {
  BottomRoundContainer({super.key, required this.icon, required this.text});
  final String text;
  IconData icon;

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1.5,
            color: themeController.isDarkMode.value
                ? Colors.white38
                : Colors.grey.shade200,
          ),
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
                style: TextStyle(
                  fontSize: 8,
                  fontWeight: FontWeight.w600,
                  color: themeController.isDarkMode.value
                      ? Colors.white
                      : Colors.black54,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

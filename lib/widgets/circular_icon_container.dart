import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/theme_controller.dart';

class CircularContainer extends StatelessWidget {
  CircularContainer({super.key, required this.icon, required this.onPressed});
  IconData icon;
  VoidCallback onPressed;
  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Obx(
        () => Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              width: 1.5,
              color: _themeController.isDarkMode.value
                  ? Colors.white54
                  : Colors.grey.shade200,
            ),
          ),
          child: Icon(
            icon,
            size: 21,
            color: _themeController.isDarkMode.value
                ? Colors.white
                : Colors.grey.shade800,
          ),
        ),
      ),
    );
  }
}

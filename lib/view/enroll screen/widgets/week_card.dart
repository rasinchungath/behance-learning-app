import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/week_tab_controller.dart';
import '../../../controller/theme_controller.dart';

class WeekCard extends StatelessWidget {
  WeekCard({
    super.key,
    required this.index,
  });

  int index;

  final WeekTabController _controller = Get.find();
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _controller.changeTabIndex(index);
      },
      child: Obx(
        () => Container(
          margin: const EdgeInsets.only(
            left: 15,
          ),
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              width: 1.5,
              color: themeController.isDarkMode.value
                  ? Colors.white38
                  : Colors.black87,
            ),
            color: _controller.currentIndex.value == index
                ? themeController.isDarkMode.value
                    ? Colors.white38
                    : Colors.black
                : themeController.isDarkMode.value
                    ? Colors.black
                    : Colors.white38,
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 25,
              right: 25,
              bottom: 10,
              top: 10,
            ),
            child: Obx(
              () => Text(
                'WEEK ${index + 1}',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w600,
                  color: _controller.currentIndex.value == index
                      ? Colors.white
                      : themeController.isDarkMode.value
                          ? Colors.white
                          : Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

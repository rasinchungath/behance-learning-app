import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../constants/constants.dart';
import '../../../controller/theme_controller.dart';

class BottomBarContainer extends StatelessWidget {
   BottomBarContainer(
      {super.key, required this.icon, required this.title});
  final IconData icon;
  final String title;

  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 8, right: 8),
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color:_themeController.isDarkMode.value?Colors.black:kprimaryColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Icon(
              icon,
              color: _themeController.isDarkMode.value?Colors.white:Colors.black,
              size: 22,
            ),
            const SizedBox(
              width: 3,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 6,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

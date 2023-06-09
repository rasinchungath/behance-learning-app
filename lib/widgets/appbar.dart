import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../constants/constants.dart';
import 'circular_icon_container.dart';

AppBar customAppbar({
  required String title,
  required IconData icon1,
  required IconData icon2,
  required VoidCallback onPressedIcon1,
  required VoidCallback onPressedIcon2,
}) {
  final ThemeController themeController = Get.find();
  return AppBar(
    elevation: 0,
    shadowColor: null,
    automaticallyImplyLeading: false,
    toolbarHeight: appBarHeight,
    flexibleSpace: SizedBox(
      height: appBarHeight,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircularContainer(
              icon: icon1,
              onPressed: onPressedIcon1,
            ),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
            ),
            CircularContainer(
              icon: icon2,
              onPressed: onPressedIcon2,
            ),
          ],
        ),
      ),
    ),
  );
}

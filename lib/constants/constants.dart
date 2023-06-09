import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/theme_controller.dart';

final ThemeController _themeController = Get.find();

BoxDecoration containerDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(22),
  border: border,
);

Border border = Border.all(
  width: 1.5,
  color:
      _themeController.isDarkMode.value ? Colors.white38 : Colors.grey.shade200,
);

const kprimaryColor = Color.fromARGB(255, 209, 248, 101);
const kstarColor = Color.fromARGB(255, 243, 219, 1);
const appBarHeight = 80.0;
const kBgColor = Colors.white;

const TextStyle kCardTitleTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.bold,
);
const TextStyle kTitleTextStyle = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w600,
);

const TextStyle kRatingTextStyle = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.w600,
  color: Colors.black54,
);

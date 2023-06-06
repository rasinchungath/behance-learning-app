import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../../constants/constants.dart';

final ThemeController themeController = Get.find();

const TextStyle kGreetingTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.w800,
  color: Colors.grey,
);

TextStyle kNameTextStyle = const TextStyle(
  fontSize: 13,
  fontWeight: FontWeight.bold,
);

 Widget seeAlltext = Obx(() => Text('See all', style: TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  color: themeController.isDarkMode.value ? kprimaryColor : Colors.black,
),),);

TextStyle kSeeAllTextStyle = TextStyle(
  fontSize: 10,
  fontWeight: FontWeight.bold,
  color: themeController.isDarkMode.value ? kprimaryColor : Colors.black,
);

TextStyle kPopularCardBottomTextStyle = TextStyle(
  fontSize: 8,
  fontWeight: FontWeight.bold,
  color: themeController.isDarkMode.value ? Colors.white :Colors.black54,
);

import 'package:flutter/material.dart';
import 'package:online_learning/view/home%20screen/home_screen.dart';
import 'package:get/get.dart';
import 'constants/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Online Learning',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(scaffoldBackgroundColor: kBgColor, fontFamily: 'Poppins'),
      home: HomeScreen(),
    );
  }
}

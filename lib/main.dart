import 'package:flutter/material.dart';
import 'package:online_learning/view/home%20screen/home_screen.dart';
import 'package:get/get.dart';
import 'constants/constants.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Online Learning',
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData(scaffoldBackgroundColor: kBgColor, fontFamily: 'Poppins'),
      home: HomeScreen(),
    );
  }
}

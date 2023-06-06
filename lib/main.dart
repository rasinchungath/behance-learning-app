import 'package:flutter/material.dart';
import 'package:online_learning/constants/constants.dart';
import 'package:online_learning/view/home%20screen/home_screen.dart';
import 'package:get/get.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      useInheritedMediaQuery: true,
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Online Learning',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: Colors.white,
        primaryColor: kprimaryColor,
        appBarTheme: const AppBarTheme(backgroundColor: Colors.white),
      ),
      darkTheme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Colors.black,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.black),
          textTheme: TextTheme().copyWith(
            bodyMedium: const TextStyle(fontFamily: 'Poppins'),
          )),
      home: HomeScreen(),
    );
  }
}

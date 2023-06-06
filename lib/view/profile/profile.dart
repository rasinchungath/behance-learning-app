import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controller/theme_controller.dart';
import '../../widgets/appbar.dart';

class Profile extends StatelessWidget {
  Profile({super.key});

  final ThemeController _themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(
          title: 'Profile',
          icon1: Icons.arrow_back,
          icon2: Icons.logout,
          onPressedIcon1: () {
            Get.back();
          },
          onPressedIcon2: () {},
        ),
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Dark Mode',
                    style: kTitleTextStyle,
                  ),
                ),
                Obx(
                  () => Switch(
                    activeColor: kprimaryColor,
                    value: _themeController.isDarkMode.value,
                    onChanged: (value) => _themeController.toggleTheme(),
                  ),
                ),
              ],
            ),
            const Expanded(
              child: Center(
                child: Text(
                  'Profile',
                  style: kTitleTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

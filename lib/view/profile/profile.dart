import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../widgets/appbar.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

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
        body: const Center(
          child: Text('Profile', style: kTitleTextStyle),
        ),
      ),
    );
  }
}

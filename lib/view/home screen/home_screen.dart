import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/home%20screen/widgets/appbar.dart';
import '../../constants/constants.dart';
import '../../controller/bottom_navigation_controller.dart';
import '../../widgets/appbar.dart';
import '../messages/messages.dart';
import '../downloads/downloads.dart';
import '../settings/settings.dart';
import 'widgets/home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = Get.put(BottomNavigationController());

  final List<Widget> _screens = [
    Home(),
    const Messages(),
    const Downloads(),
    const Settings(),
  ];

  AppBar appbar(int currentIndex) {
    if (currentIndex == 0) {
      return customHomeAppbar();
    } else if (currentIndex == 1) {
      return customAppbar(
        title: 'Messages',
        icon1: Icons.account_circle,
        icon2: Icons.abc,
        onPressedIcon1: () {},
        onPressedIcon2: () {},
      );
    } else if (currentIndex == 2) {
      return customAppbar(
        title: 'Downloads',
        icon1: Icons.download,
        icon2: Icons.delete,
        onPressedIcon1: () {},
        onPressedIcon2: () {},
      );
    } else {
      return customAppbar(
        title: 'Settings',
        icon1: Icons.account_circle,
        icon2: Icons.settings,
        onPressedIcon1: () {},
        onPressedIcon2: () {},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(
        () => Scaffold(
          appBar: appbar(_controller.currentIndex.value),
          extendBody: true,
          body: _screens[_controller.currentIndex.value],
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.only(bottom: 10, right: 25, left: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: SizedBox(
                height: 65,
                child: BottomNavigationBar(
                  backgroundColor: Colors.black,
                  selectedItemColor: kprimaryColor,
                  iconSize: 20,
                  currentIndex: _controller.currentIndex.value,
                  onTap: (index) => _controller.changeTabIndex(index),
                  items: const [
                    BottomNavigationBarItem(
                      icon: Icon(Icons.home),
                      label: 'Home',
                      backgroundColor: Colors.black,
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.message),
                      label: 'Messages',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.download),
                      label: 'Downloads',
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(Icons.settings),
                      label: 'Settings',
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

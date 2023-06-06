import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/home%20screen/widgets/appbar.dart';
import '../../constants/constants.dart';
import '../../controller/bottom_navigation_controller.dart';
import '../../controller/theme_controller.dart';
import '../../widgets/appbar.dart';
import '../messages/messages.dart';
import '../downloads/downloads.dart';
import '../settings/settings.dart';
import 'widgets/bottom_bar_container.dart';
import 'widgets/home.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final _controller = Get.put(BottomNavigationController());
  final ThemeController _themeController = Get.put(ThemeController());

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
            padding: const EdgeInsets.only(bottom: 10, right: 30, left: 30),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(35),
              child: SizedBox(
                height: 68,
                child: BottomNavigationBar(
                  selectedLabelStyle: const TextStyle(
                    fontSize: 0,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 0,
                  ),
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  unselectedIconTheme: IconThemeData(
                    color: _themeController.isDarkMode.value
                        ? Colors.grey.shade500
                        : Colors.white,
                  ),
                  iconSize: 22,
                  currentIndex: _controller.currentIndex.value,
                  onTap: (index) => _controller.changeTabIndex(index),
                  items: [
                    BottomNavigationBarItem(
                      icon: _controller.currentIndex.value == 0
                          ? BottomBarContainer(icon: Icons.home, title: 'Home')
                          : const Icon(Icons.home),
                      label: '',
                      backgroundColor: _themeController.isDarkMode.value
                          ? kprimaryColor
                          : Colors.black,
                    ),
                    BottomNavigationBarItem(
                      icon: _controller.currentIndex.value == 1
                          ? BottomBarContainer(
                              icon: Icons.message, title: 'Messages')
                          : const Icon(Icons.message),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: _controller.currentIndex.value == 2
                          ? BottomBarContainer(
                              icon: Icons.download, title: 'Downloads')
                          : const Icon(Icons.download),
                      label: '',
                    ),
                    BottomNavigationBarItem(
                      icon: _controller.currentIndex.value == 3
                          ? BottomBarContainer(
                              icon: Icons.settings, title: 'Settings')
                          : const Icon(Icons.settings),
                      label: '',
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

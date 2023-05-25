import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../widgets/circular_icon_container.dart';
import 'circular_container.dart';

AppBar customHomeAppbar() {
  return AppBar(
    elevation: 0,
    shadowColor: null,
    backgroundColor: Colors.white,
    automaticallyImplyLeading: false,
    toolbarHeight: appBarHeight,
    flexibleSpace: SizedBox(
      height: appBarHeight,
      child: Padding(
        padding: const EdgeInsets.only(
          left: 15,
          right: 15,
          top: 15,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CircularImageContainer(image: 'assets/images/profile.jpg'),
            Row(
              children: [
                CircularContainer(
                  icon: Icons.search_outlined,
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 5,
                ),
                CircularContainer(
                  icon: Icons.notifications_outlined,
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

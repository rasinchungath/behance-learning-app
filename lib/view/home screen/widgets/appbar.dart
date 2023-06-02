import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/profile/profile.dart';
import '../../../constants/constants.dart';
import '../../../controller/search_controller.dart';
import '../../../widgets/circular_icon_container.dart';
import '../../../widgets/custom_textfield.dart';
import 'circular_container.dart';

AppBar customHomeAppbar() {
  final _searchController = Get.put(SearchController());
  TextEditingController _textController = new TextEditingController();

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
            GestureDetector(
              onTap: () {
                Get.to(() => const Profile());
              },
              child: const CircularImageContainer(
                  image: 'assets/images/profile.jpg'),
            ),
            Row(
              children: [
                _searchController.isSearching.value
                    ? CustomTextField(
                        hintText: 'search',
                        controller: _textController,
                        keyboardType: TextInputType.name,
                      )
                    : const Text(''),
                    const SizedBox(
                  width: 5,
                ),
                CircularContainer(
                  icon: Icons.search_outlined,
                  onPressed: () {
                    _searchController.toggleFlag();
                  },
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

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../../../constants/constants.dart';
import '../../home screen/widgets/circular_container.dart';

class RoundedContainer extends StatelessWidget {
  RoundedContainer({
    super.key,
    required this.image,
    required this.text,
  });
  final String image;
  final String text;
  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        width: 165,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1.5,
            color: themeController.isDarkMode.value
                ? Colors.white38
                : Colors.grey.shade200,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Row(
            children: [
              CircularImageContainer(image: image),
              const SizedBox(
                width: 5,
              ),
              Text(
                text,
                style: kTitleTextStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}

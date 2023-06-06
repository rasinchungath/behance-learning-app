import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import '../../../constants/constants.dart';

class PendingTasksCard extends StatelessWidget {
   PendingTasksCard({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.date,
  });

  final String title;
  final String image;
  final String subTitle;
  final String date;

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 15, left: 15, bottom: 8),
        child:Obx(() =>  Container(
          width: 320,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22),
              border: Border.all(
                width: 1.5,
                color: themeController.isDarkMode.value
                    ? Colors.white38
                    : Colors.grey.shade200,
              ),
            ),
          child: Padding(
            padding: const EdgeInsets.only(
              right: 10,
              top: 20,
              bottom: 5,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    bottom: 20,
                    right: 10,
                  ),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(image),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: kCardTitleTextStyle,
                        ),
                        Text(
                          subTitle,
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  date,
                  style: const TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/controller/theme_controller.dart';
import 'package:online_learning/view/home%20screen/widgets/star_icon.dart';
import '../../../constants/constants.dart';

class PopularCoursesCard extends StatelessWidget {
  PopularCoursesCard({
    super.key,
    required this.title,
    required this.image,
    required this.courseName,
    required this.totalRatings,
    required this.starCount,
    required this.totalLessons,
    required this.courseImage,
  });

  final String title;
  final String image;
  final int starCount;
  final String courseName;
  final String courseImage;
  final String totalRatings;
  final int totalLessons;

  final ThemeController themeController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Obx(
          () => Container(
            width: 190,
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
                left: 10,
                right: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      top: 15,
                      bottom: 10,
                    ),
                    height: 80,
                    width: 190,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 52,
                    child: Text(
                      title,
                      style: kCardTitleTextStyle,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      StarIconsHorizontal(
                        icon: Icons.star,
                        count: starCount,
                      ),
                      Obx(
                        () => Text(
                          '(${totalRatings}K)',
                          style: TextStyle(
                            fontSize: 9,
                            color: themeController.isDarkMode.value
                                ? Colors.white
                                : Colors.black38,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        child: Row(
                          children: [
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(courseImage),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 3,
                            ),
                            Obx(
                              () => Text(
                                courseName,
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: themeController.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        child: Row(
                          children: [
                            const Icon(Icons.play_arrow_rounded),
                            Obx(
                              () => Text(
                                '$totalLessons Lessons',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.bold,
                                  color: themeController.isDarkMode.value
                                      ? Colors.white
                                      : Colors.black54,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

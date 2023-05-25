import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../learning_screen/learning_screen.dart';
import '../constants.dart';
import 'package:get/get.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({
    super.key,
    required this.image,
    required this.subTitle,
    required this.title,
    required this.percentage,
  });

  final String title;
  final String subTitle;
  final String percentage;
  final String image;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => const LearningScreen(),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Container(
          width: 330,
          decoration: containerDecoration,
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        subTitle,
                        style: kGreetingTextStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                       Text(
                       title,
                        style: kCardTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            percentage,
                            style: kGreetingTextStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(8),
                height: 130,
                width: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(
                    20,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../../../constants/constants.dart';
import '../../../models/learning_model.dart';
import '../../learning_screen/learning_screen.dart';
import '../constants.dart';
import 'package:get/get.dart';

class LearningCard extends StatelessWidget {
  const LearningCard({super.key, required this.continuelearning});

  final LearningModel continuelearning;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => LearningScreen(continuelearning: continuelearning),
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
                        continuelearning.subTitle,
                        style: kGreetingTextStyle,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        continuelearning.title,
                        style: kCardTitleTextStyle,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            '${continuelearning.percentage}%',
                            style: kGreetingTextStyle,
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Expanded(
                            child: LinearProgressIndicator(
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.black),
                              backgroundColor: Colors.grey.shade400,
                              minHeight: 3,
                              value: (continuelearning.percentage / 100),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Hero(
                tag: continuelearning.image,
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 130,
                  width: 120,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(continuelearning.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
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

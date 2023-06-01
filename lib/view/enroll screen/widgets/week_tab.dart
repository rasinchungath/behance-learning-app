import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/week_tab_controller.dart';
import '../../../models/learning_model.dart';
import 'courses_container.dart';
import 'week_card.dart';

class WeekTabScreen extends StatelessWidget {
  WeekTabScreen({super.key, required this.continuelearning});
  final LearningModel continuelearning;

  final _controller = Get.put(WeekTabController());

  final List<Widget> _screens = [
    ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return CoursesContainer(
          title: 'Introduction to Midjourney',
          subTitle: 'Midjourney course introduction',
          videoCount: 7,
          time: '8h:40min',
        );
      },
    ),
    CoursesContainer(
      title: '3D Art and Illustration',
      subTitle: 'continuelearning',
      videoCount: 7,
      time: '8h:40min',
    ),
    ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 2,
      itemBuilder: (context, index) {
        return CoursesContainer(
          title: 'Introduction to Midjourney',
          subTitle: 'Midjourney course introduction',
          videoCount: 7,
          time: '8h:30min',
        );
      },
    ),
    CoursesContainer(
      title: '3D Art and Illustration',
      subTitle: 'Course introduction',
      videoCount: 7,
      time: '8h:40min',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 45,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: continuelearning.weeks,
            itemBuilder: (context, index) {
              return WeekCard(
                index: index,
              );
            },
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: continuelearning
              .weekTopics[_controller.currentIndex.value].topics.length,
          itemBuilder: (context, index) {
            return Obx(
              () => CoursesContainer(
                title: continuelearning
                    .weekTopics[_controller.currentIndex.value]
                    .topics[index]
                    .title,
                subTitle: continuelearning
                    .weekTopics[_controller.currentIndex.value]
                    .topics[index]
                    .subTitle,
                videoCount: continuelearning
                    .weekTopics[_controller.currentIndex.value]
                    .topics[index]
                    .videoCount,
                time: continuelearning
                    .weekTopics[_controller.currentIndex.value]
                    .topics[index]
                    .time,
              ),
            );
          },
        ),
      ],
    );
  }
}

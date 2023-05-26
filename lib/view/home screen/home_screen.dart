import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/home%20screen/widgets/appbar.dart';
import '../../constants/constants.dart';
import '../../controller/data_controller.dart';
import 'constants.dart';
import 'widgets/learning_card.dart';
import 'widgets/pending_tasks_card.dart';
import 'widgets/popular_course_card.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final dataController = Get.put(DataController());
  int userid = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: customHomeAppbar(),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 8,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                'Good morning 👋',
                style: kGreetingTextStyle,
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
              ),
              child: Text(
                dataController.data[userid].userName,
                style: kNameTextStyle,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Continue learning',
                    style: kTitleTextStyle,
                  ),
                  Icon(
                    Icons.more_horiz,
                    size: 30,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 160,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: dataController.data[userid].continueLearning.length,
                itemBuilder: (context, index) {
                  return LearningCard(
                    continuelearning:
                        dataController.data[userid].continueLearning[index],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Popular Courses',
                    style: kTitleTextStyle,
                  ),
                  Text(
                    'See all',
                    style: kSeeAllTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              height: 240,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                itemCount: dataController.popularcourses.length,
                itemBuilder: (context, index) {
                  return PopularCoursesCard(
                    title: dataController.popularcourses[index].title,
                    image: dataController.popularcourses[index].image,
                    courseName: dataController.popularcourses[index].courseName,
                    totalRatings:
                        dataController.popularcourses[index].totalRatings,
                    starCount: dataController.popularcourses[index].starCount,
                    totalLessons:
                        dataController.popularcourses[index].totalLessons,
                    courseImage:
                        dataController.popularcourses[index].courseImage,
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 15,
                right: 15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Pending Tasks',
                    style: kTitleTextStyle,
                  ),
                  Text(
                    'See all',
                    style: kSeeAllTextStyle,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            SizedBox(
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: dataController.data[userid].pendingTasks.length,
                itemBuilder: (context, index) {
                  return PendingTasksCard(
                    image:
                        dataController.data[userid].pendingTasks[index].image,
                    subTitle: dataController
                        .data[userid].pendingTasks[index].subTitle,
                    title:
                        dataController.data[userid].pendingTasks[index].title,
                    date: dataController.data[userid].pendingTasks[index].date,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

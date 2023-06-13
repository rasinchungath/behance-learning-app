import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/learning_screen/widgets/about_course_container.dart';
import 'package:online_learning/widgets/appbar.dart';
import 'package:online_learning/view/learning_screen/widgets/bottom_round_container.dart';
import 'package:online_learning/view/learning_screen/widgets/rounded_container.dart';
import '../../models/learning_model.dart';
import '../../widgets/custom_button.dart';
import '../enroll screen/enroll_screen.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({
    super.key,
    required this.continuelearning,
  });
  final LearningModel continuelearning;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(
          title: 'Course Info',
          icon1: Icons.arrow_back,
          icon2: Icons.more_horiz,
          onPressedIcon1: () => Get.back(),
          onPressedIcon2: () {},
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding:
                const EdgeInsets.only(left: 15, right: 15, top: 25, bottom: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  continuelearning.title,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Hero(
                  tag: continuelearning.image,
                  child: Container(
                    height: 200,
                    width: double.infinity,
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
                const SizedBox(height: 8),
                RoundedContainer(
                  image: continuelearning.image2,
                  text: continuelearning.subTitle,
                ),
                const SizedBox(
                  height: 15,
                ),
                AboutCourseContainer(
                  title: 'About this Course',
                  description: continuelearning.courseDescription,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomRoundContainer(
                      icon: Icons.auto_stories_outlined,
                      text: '${continuelearning.lessonsCount} Lessons',
                    ),
                    BottomRoundContainer(
                      icon: Icons.access_time,
                      text: continuelearning.time,
                    ),
                    BottomRoundContainer(
                      icon: Icons.star_border_outlined,
                      text: '${continuelearning.ratings} Ratings',
                    ),
                  ],
                ),
                const SizedBox(
                  height: 80,
                ),
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(left: 15, right: 15, bottom: 0),
          child: CustomButton(
            label: 'Enroll for free',
            onpressed: () {
              Get.to(
                () => EnrollScreen(continuelearning: continuelearning),
              );
            },
          ),
        ),

        // bottomNavigationBar: Padding(
        //   padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        //   child: ClipRRect(
        //     borderRadius: BorderRadius.circular(30),
        //     child: BottomAppBar(
        //       elevation: 0,
        //       child: CustomButton(
        //         label: 'Enroll for free',
        //         onpressed: () {
        //           Get.to(
        //             () => EnrollScreen(continuelearning: continuelearning),
        //           );
        //         },
        //       ),
        //     ),
        //   ),
        // ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/view/learning_screen/widgets/about_course_container.dart';
import 'package:online_learning/widgets/appbar.dart';
import 'package:online_learning/view/learning_screen/widgets/bottom_round_container.dart';
import 'package:online_learning/view/learning_screen/widgets/rounded_container.dart';
import '../../constants/constants.dart';
import '../../widgets/custom_button.dart';
import '../enroll screen/enroll_screen.dart';

class LearningScreen extends StatelessWidget {
  const LearningScreen({super.key});

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
                const Text(
                  '3D Art & Illustration with Midjourney',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage("assets/images/learning3.jpg"),
                      fit: BoxFit.fill,
                    ),
                    borderRadius: BorderRadius.circular(
                      20,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                const RoundedContainer(
                  image: 'assets/images/learning.png',
                  text: 'Midjourney',
                ),
                const SizedBox(
                  height: 15,
                ),
                const AboutCourseContainer(
                  title: 'About this Course',
                  description: text,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BottomRoundContainer(
                        icon: Icons.auto_stories_outlined, text: '22 Lessons'),
                    BottomRoundContainer(
                        icon: Icons.access_time, text: '80h:30min'),
                    BottomRoundContainer(
                        icon: Icons.star_border_outlined, text: '4.9 Ratings'),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: CustomButton(
              label: 'Enroll for free',
              onpressed: () {
                Get.to(
                  () => const EnrollScreen(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

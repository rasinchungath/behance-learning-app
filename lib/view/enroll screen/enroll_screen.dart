import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:online_learning/widgets/appbar.dart';
import '../../constants/constants.dart';
import '../../models/learning_model.dart';
import '../../widgets/custom_button.dart';
import 'widgets/courses_container.dart';
import 'widgets/hour_rating_widgets.dart';
import 'widgets/week_card.dart';

class EnrollScreen extends StatelessWidget {
  const EnrollScreen({
    super.key,
    required this.continuelearning,
  });
  final LearningModel continuelearning;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: customAppbar(
          title: '',
          icon1: Icons.arrow_back,
          icon2: Icons.recycling_outlined,
          onPressedIcon1: () => Get.back(),
          onPressedIcon2: () {},
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                  top: 25,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 27,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blue,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          continuelearning.subTitle,
                          style: const TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      continuelearning.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    HourRatingWidgets(
                      icon1: Icons.access_time,
                      text1: continuelearning.time,
                      icon2: Icons.star,
                      text2: '${continuelearning.ratings} Ratings',
                      color: kstarColor,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 45,
                child: ListView.builder(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: continuelearning.weeks,
                  itemBuilder: (context, index) {
                    return WeekCard(
                      weeks: index,
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
                itemCount: 4,
                itemBuilder: (context, index) {
                  return CoursesContainer(
                    title: continuelearning.topics[index].title,
                    subTitle: continuelearning.topics[index].subTitle,
                    videoCount: continuelearning.topics[index].videoCount,
                    time:continuelearning.topics[index].time,
                  );
                },
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: CustomButton(
              label: 'Start course',
              onpressed: () {},
            ),
          ),
        ),
      ),
    );
  }
}

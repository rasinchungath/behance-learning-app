import 'package:flutter/material.dart';
import 'package:online_learning/view/home%20screen/widgets/star_icon.dart';
import '../../../constants/constants.dart';
import '../constants.dart';

class PopularCoursesCard extends StatelessWidget {
  const PopularCoursesCard({
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

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 5, left: 5),
        child: Container(
          width: 190,
          decoration: containerDecoration,
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
                    Text(
                      '(${totalRatings}K)',
                      style: const TextStyle(
                        fontSize: 9,
                        color: Colors.black38,
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
                          Text(
                            courseName,
                            style: kPopularCardBottomTextStyle,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      child: Row(
                        children: [
                          const Icon(Icons.play_arrow_rounded),
                          Text(
                            '$totalLessons Lessons',
                            style: kPopularCardBottomTextStyle,
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
    );
  }
}

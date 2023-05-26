import 'package:get/get.dart';
import '../models/data_model.dart';
import '../models/learning_model.dart';
import '../models/pending_task_model.dart';
import '../models/popular_cousre_model.dart';

class DataController extends GetxController {
  List<DataModel> data = [
    DataModel(
      userName: 'Rasin Chungath',
      profieImage: 'assets/images/profile.jpg',
      id: 001,
      continueLearning: [
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/learning3.jpg',
          percentage: 69,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 22,
          time: '80h:30min',
          ratings: 4.5,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 10,
              time: '4h:20min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 7,
              time: '1h:40min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 6,
              time: '5h:30min',
            ),
          ],
        ),
        LearningModel(
          subTitle: 'Animation',
          title: 'Learn 3D Animation with Midjourney ',
          image: 'assets/images/learning.png',
          percentage: 50,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 52,
          time: '8h:30min',
          ratings: 5,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
        LearningModel(
          subTitle: 'Coding',
          title: 'Learn coding with Midjourney',
          image: 'assets/images/learning2.jpg',
          percentage: 55,
          image2: 'assets/images/learning3.jpg',
          lessonsCount: 77,
          time: '80h:30min',
          ratings: 3.0,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/profile.jpg',
          percentage: 69,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 90,
          time: '80h:30min',
          ratings: 4,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
      ],
      pendingTasks: [
        PendingTask(
          image: 'assets/images/learning.png',
          subTitle: 'Introduction to UI/UX',
          title: 'Travel Guide App Wire frame',
          date: 'Sat,8,2023',
        ),
        PendingTask(
          image: 'assets/images/learning3.jpg',
          subTitle: 'Artificial intelligence',
          title: 'Welcome to the world of AI',
          date: 'Tue,4,2020',
        ),
        PendingTask(
          image: 'assets/images/profile.jpg',
          subTitle: 'Stock Market',
          title: 'Money talks',
          date: 'Mon,8,2023',
        ),
        PendingTask(
          image: 'assets/images/learning.png',
          subTitle: 'Cross platform',
          title: 'Mobile App developement',
          date: 'Sat,8,2023',
        ),
      ],
    ),
    DataModel(
      userName: 'Clint Jose',
      profieImage: 'assets/images/profile.jpg',
      id: 002,
      continueLearning: [
        LearningModel(
          subTitle: 'Animation',
          title: 'Animation and Vfx',
          image: 'assets/images/learning2.jpg',
          percentage: 50,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 90,
          time: '80h:30min',
          ratings: 4,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
      ],
      pendingTasks: [
        PendingTask(
          image: 'assets/images/learning2.jpg',
          subTitle: 'Artificial intelligence',
          title: 'Wekcome to the world of AI',
          date: 'Tue,4,2020',
        ),
      ],
    ),
    DataModel(
      userName: 'Arun Thambi',
      profieImage: 'assets/images/profile.jpg',
      id: 003,
      continueLearning: [
        LearningModel(
          subTitle: 'Coding',
          title: 'Learn to code',
          image: 'assets/images/learning3.jpg',
          percentage: 55,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 90,
          time: '80h:30min',
          ratings: 4,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
      ],
      pendingTasks: [
        PendingTask(
          image: 'assets/images/profile.jpg',
          subTitle: 'Stock Market',
          title: 'Money talks',
          date: 'Mon,8,2023',
        ),
      ],
    ),
    DataModel(
      userName: 'Philip Chacko',
      profieImage: 'assets/images/profile.jpg',
      id: 004,
      continueLearning: [
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/learning3.jpg',
          percentage: 69,
          image2: 'assets/images/profile.jpg',
          lessonsCount: 90,
          time: '80h:30min',
          ratings: 4,
          weeks: 5,
          topics: [
            Topics(
              title: 'Introduction to Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'Basics of 3D Art',
              subTitle: '3D Art introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: '3D Art and Illustration',
              subTitle: 'Course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
            Topics(
              title: 'About Midjourney',
              subTitle: 'Midjourney course introduction',
              videoCount: 4,
              time: '8h:30min',
            ),
          ],
        ),
      ],
      pendingTasks: [
        PendingTask(
          image: 'assets/images/learning.png',
          subTitle: 'Introduction to UI/UX',
          title: 'Travel Guide app Wire frame',
          date: 'Sat,8,2023',
        ),
      ],
    ),
  ];

  List<PopularCourse> popularcourses = [
    PopularCourse(
      title: 'Introduction to Figma',
      image: 'assets/images/learning.png',
      courseName: 'Figma',
      totalRatings: '250',
      starCount: 4,
      totalLessons: 40,
      courseImage: 'assets/images/learning.png',
    ),
    PopularCourse(
      title: 'Mobile App Developement',
      image: 'assets/images/learning2.jpg',
      courseName: 'FLutter',
      totalRatings: '470',
      starCount: 3,
      totalLessons: 20,
      courseImage: 'assets/images/learning3.jpg',
    ),
    PopularCourse(
      title: 'Web developement',
      image: 'assets/images/learning3.jpg',
      courseName: 'Angular',
      totalRatings: '370',
      starCount: 2,
      totalLessons: 23,
      courseImage: 'assets/images/learning2.jpg',
    ),
    PopularCourse(
      title: 'Introduction to Figma',
      image: 'assets/images/profile.jpg',
      courseName: 'Figma',
      totalRatings: '250',
      starCount: 5,
      totalLessons: 40,
      courseImage: 'assets/images/learning.png',
    ),
  ];
}

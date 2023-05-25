import 'package:get/get.dart';
import '../models/data_model.dart';
import '../models/learning_model.dart';
import '../models/pending_task_model.dart';
import '../models/popular_cousre_model.dart';

class DataController extends GetxController {

  List<DataModel> data = [
    DataModel(
      userName: 'Abraham Koshy',
      profieImage: 'assets/images/profile.jpg',
      id: 001,
      continueLearning: [
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/learning3.jpg',
          percentage: '69%',
        ),
        LearningModel(
          subTitle: 'Animation',
          title: 'Animation and Vfx',
          image: 'assets/images/learning.png',
          percentage: '50%',
        ),
        LearningModel(
          subTitle: 'Coding',
          title: 'Learn to code',
          image: 'assets/images/learning2.jpg',
          percentage: '55%',
        ),
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/profile.jpg',
          percentage: '69%',
        ),
      ],
      pendingTasks: [
        PendingTask(
          image: 'assets/images/learning.png',
          subTitle: 'Introduction to UI/UX',
          title: 'Travel Guide app Wire frame',
          date: 'Sat,8,2023',
        ),
        PendingTask(
          image: 'assets/images/learning3.jpg',
          subTitle: 'Artificial intelligence',
          title: 'Wekcome to the world of AI',
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
      id: 001,
      continueLearning: [
        LearningModel(
          subTitle: 'Animation',
          title: 'Animation and Vfx',
          image: 'assets/images/learning2.jpg',
          percentage: '50%',
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
      id: 001,
      continueLearning: [
        LearningModel(
          subTitle: 'Coding',
          title: 'Learn to code',
          image: 'assets/images/learning3.jpg',
          percentage: '55%',
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
      id: 001,
      continueLearning: [
        LearningModel(
          subTitle: '3D Designs',
          title: '3D Art & Illustration with Midjourney',
          image: 'assets/images/learning3.jpg',
          percentage: '69%',
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

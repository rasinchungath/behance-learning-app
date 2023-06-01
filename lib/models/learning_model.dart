class LearningModel {
  LearningModel(
      {required this.subTitle,
      required this.title,
      required this.image,
      required this.percentage,
      required this.image2,
      required this.lessonsCount,
      required this.time,
      required this.ratings,
      required this.weeks,
      required this.weekTopics,
      required this.courseDescription});
  String subTitle;
  String title;
  String image;
  int percentage;
  String image2;
  int lessonsCount;
  String time;
  double ratings;
  int weeks;
  String courseDescription;
  List<Week> weekTopics;
}

class Topics {
  Topics(
      {required this.title,
      required this.subTitle,
      required this.videoCount,
      required this.time});
  String title;
  String subTitle;
  int videoCount;
  String time;
}

class Week {
  Week({
    required this.week,
    required this.topics,
  });
  int week;
  List<Topics> topics;
}

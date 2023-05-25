import 'learning_model.dart';
import 'pending_task_model.dart';

class DataModel {
  DataModel({
    required this.userName,
    required this.id,
    required this.profieImage,
    required this.continueLearning,
    required this.pendingTasks,
  });
  String userName;
  String profieImage;
  int id;
  List<PendingTask> pendingTasks;
  List<LearningModel> continueLearning;
}

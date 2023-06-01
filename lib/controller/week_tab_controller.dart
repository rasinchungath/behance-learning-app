import 'package:get/get.dart';

class WeekTabController extends GetxController {
  var currentIndex = 0.obs;
  var flag = true.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }

  void toggleFlag() {
    flag.value = !flag.value;
  }
}

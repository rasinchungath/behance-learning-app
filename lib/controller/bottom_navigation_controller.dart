import 'package:get/get.dart';

class BottomNavigationController extends GetxController {
  var currentIndex = 0.obs;

  void changeTabIndex(int index) {
    currentIndex.value = index;
  }
  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
      //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }
}

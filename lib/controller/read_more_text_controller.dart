import 'package:get/get.dart';

class DescriptionTextController extends GetxController {
  var firstHalf = "".obs;
  var secondHalf = "".obs;
  var flag = true.obs;

  initializeText(String text) {
    if (text.length > 240) {
      firstHalf.value = text.substring(0, 240);
      secondHalf.value = text.substring(240, text.length);
    } else {
      firstHalf.value = text;
      secondHalf.value = "";
    }
  }

  void toggleFlag() {
    flag.value = !flag.value;
  }
}

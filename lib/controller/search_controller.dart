import 'package:get/get.dart';

class SearchController extends GetxController {
 
  var isSearching = false.obs;

  void toggleFlag() {
   isSearching.value = !isSearching.value;
  }
}
import 'package:get/get.dart';

class RootController extends GetxController {
  RxInt selectedIndex = 0.obs;
  RxDouble containerPosition = 0.0.obs;

  void changePage(int index) {
    selectedIndex.value = index;
    containerPosition.value = index * Get.width / 4 + 40;
  }
}

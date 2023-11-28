import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final CarousalcurrentIndex = 0.obs;

  void updateCarousalIndex(int index) {
    CarousalcurrentIndex.value = index;
  }
}

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:t_store/features/authentication/screen/login/login.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instance => Get.find();

  // variable
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;
  void updatePageIndicator(index) {
    currentPageIndex.value = index;
  }

  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(const LoginScreen());
    } else {
      currentPageIndex.value++;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }

  void skipPage() {
    Get.offAll(const LoginScreen());
    // currentPageIndex.value = 2;
    // pageController.jumpToPage(2);
  }
}

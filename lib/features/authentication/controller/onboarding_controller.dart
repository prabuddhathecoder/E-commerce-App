
import 'package:ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final PageController pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void getNavigationDotClicked(index) {
    currentPageIndex.value = index;

    pageController.jumpToPage(index);
  }

  void nextPage() {
    if (currentPageIndex.value == 2) {
      Get.offAll(() => const LoginScreen());
      return;
    }
    currentPageIndex++;
    pageController.jumpToPage(currentPageIndex.value);
  }

  void skipOnboarding() {
    // Logic to skip onboarding
    if (currentPageIndex.value != 2) {
      currentPageIndex.value = 2;
      pageController.jumpToPage(currentPageIndex.value);
    }
  }
}

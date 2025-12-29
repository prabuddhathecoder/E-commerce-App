import 'package:ecommerce/features/authentication/controller/onboarding_controller.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class NavigationIndicatorWidget extends StatelessWidget {
  NavigationIndicatorWidget({
    super.key,
  });
  final controller = OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: AppDeviceHelper.getBottomNavigationBarHeight() * 6,
        left: AppDeviceHelper.getScreenWidth(context) / 3,
         right: AppDeviceHelper.getScreenWidth(context) / 3,
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.getNavigationDotClicked,
          count: 3,
          effect: const ExpandingDotsEffect(dotHeight: 5.0),
        ));
  }
}

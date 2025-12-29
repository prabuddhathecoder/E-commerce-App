import 'package:ecommerce/features/authentication/controller/onboarding_controller.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingSkipBtn extends StatelessWidget {
  OnboardingSkipBtn({
    super.key,
  });
  final OnboardingController controller = OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: AppDeviceHelper.getAppBarHeight(),
        right: 0,
        child: Obx(
          () => controller.currentPageIndex.value != 2
              ? TextButton(
                  onPressed: controller.skipOnboarding,
                  child: const Text('Skip'))
              : const SizedBox.shrink(),
        ));
  }
}

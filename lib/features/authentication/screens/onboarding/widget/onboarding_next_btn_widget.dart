import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/features/authentication/controller/onboarding_controller.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class OnboardingNextBtn extends StatelessWidget {
  OnboardingNextBtn({
    super.key,
  });
  final OnboardingController controller = OnboardingController.instance;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: AppSizes.spaceBtwItems * 2,
      left: 0,
      right: 0,
      child: CustomeBtn(
        onPressed: controller.nextPage,
        child: Obx(
          () => Text(
              controller.currentPageIndex.value == 2 ? 'Get Started' : 'Next'),
        ),
      ),
    );
  }
}

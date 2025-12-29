import 'package:ecommerce/features/authentication/controller/onboarding_controller.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widget/navigetion_indicator_widget.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widget/onboarding_next_btn_widget.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widget/onboarding_page.dart';
import 'package:ecommerce/features/authentication/screens/onboarding/widget/onboarding_skip_btn._widget.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

class OnBording extends StatelessWidget {
  OnBording({super.key});

  final OnboardingController controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
        child: Stack(
          children: [
            PageView(
              controller: controller.pageController,
              onPageChanged: controller.updatePageIndicator,
              children: const [
                OnBoardingPage(
                    title: AppTexts.onBoardingTitle1,
                    subTitle: AppTexts.onBoardingSubTitle1,
                    imagePath: AppImages.onBoardingImage1),
                OnBoardingPage(
                    title: AppTexts.onBoardingTitle2,
                    subTitle: AppTexts.onBoardingSubTitle2,
                    imagePath: AppImages.onBoardingImage2),
                OnBoardingPage(
                    title: AppTexts.onBoardingTitle3,
                    subTitle: AppTexts.onBoardingSubTitle3,
                    imagePath: AppImages.onBoardingImage3),
              ],
            ),
            NavigationIndicatorWidget(),
            OnboardingNextBtn(),
            OnboardingSkipBtn()
          ],
        ),
      ),
    );
  }
}

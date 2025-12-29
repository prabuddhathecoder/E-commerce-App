import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/features/authentication/screens/login/login_screen.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/route_manager.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Get.offAll(
                const LoginScreen()), // Navigate back to the previous screen
          ),
        ],
      ),
      body: Padding(
        padding: ScreenPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(AppImages.resetPasswordImg,
                    height: AppDeviceHelper.getScreenWidth(context) * 0.4),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Text(
                  AppTexts.resetPasswordTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  'prabuddhawade@gamil.com',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  AppTexts.resetPasswordSubTitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections * 2,
            ),
            CustomeBtn(
                onPressed: () => Get.offAll(const LoginScreen()),
                child: const Text(AppTexts.done)),
            const SizedBox(height: AppSizes.spaceBtwItems),
            TextButton(
                onPressed: () => Get.offAll(const LoginScreen()),
                child: const Text(AppTexts.resendEmail)),
          ],
        ),
      ),
    );
  }
}

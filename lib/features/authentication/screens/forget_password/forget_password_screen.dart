import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/features/authentication/screens/forget_password/reset_password_screen.dart';
import 'package:ecommerce/features/authentication/screens/forget_password/widget/forget_password_form_widget.dart';
import 'package:ecommerce/features/authentication/screens/forget_password/widget/forget_password_widget.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
          child: Padding(
        padding: ScreenPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const ForgetPassHeader(),
            const SizedBox(height: AppSizes.spaceBtwSections),
            const ForgetPassForm(),
            const SizedBox(height: AppSizes.spaceBtwSections),
            CustomeBtn(
                onPressed: () => Get.to(const ResetPasswordScreen()),
                child: const Text(AppTexts.submit))
          ],
        ),
      )),
    );
  }
}

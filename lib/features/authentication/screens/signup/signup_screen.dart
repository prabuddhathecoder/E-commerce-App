import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/login_signup/login_Divider.dart';
import 'package:ecommerce/common/widget/login_signup/socail_icons.dart';
import 'package:ecommerce/features/authentication/screens/signup/verify_email_screen.dart';
import 'package:ecommerce/features/authentication/screens/signup/widget/SignUpform_widget.dart';
import 'package:ecommerce/features/authentication/screens/signup/widget/policy_term_widget.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

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
              const Text(AppTexts.signupTitle),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const SignupForm(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const PolicyAndTerm(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              CustomeBtn(
                  onPressed: () => Get.to(const VerifyEmailScreen()),
                  child: const Text(AppTexts.createAccount)),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const LoginDivider(title: AppTexts.orSignupWith),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SocailIcons()
            ],
          ),
        ),
      ),
    );
  }
}

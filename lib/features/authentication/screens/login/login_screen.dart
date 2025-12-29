import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/login_signup/login_Divider.dart';
import 'package:ecommerce/common/widget/login_signup/socail_icons.dart';
import 'package:ecommerce/features/authentication/screens/login/widget/login_form.dart';
import 'package:ecommerce/features/authentication/screens/login/widget/login_header.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
          padding: ScreenPadding.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginHeader(),
              SizedBox(height: AppSizes.spaceBtwSections),
              LoginForm(),
              SizedBox(height: AppSizes.spaceBtwSections),
              LoginDivider(title: AppTexts.orSignInWith),
              SizedBox(height: AppSizes.spaceBtwSections),
              SocailIcons()
            ],
          ),
        ),
      ),
    );
  }
}

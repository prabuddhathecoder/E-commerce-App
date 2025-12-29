import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/features/authentication/screens/forget_password/forget_password_screen.dart';
import 'package:ecommerce/features/authentication/screens/signup/signup_screen.dart';
import 'package:ecommerce/navigation_manu.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TextField(
            decoration: InputDecoration(
                labelText: AppTexts.email,
                prefixIcon: Icon(Iconsax.direct_right))),
        const SizedBox(height: AppSizes.spaceBtwInputFields),
        const TextField(
          obscureText: true,
          decoration: InputDecoration(
              labelText: AppTexts.password,
              prefixIcon: Icon(Iconsax.password_check),
              suffixIcon: Icon(Iconsax.eye)),
        ),
        const SizedBox(height: AppSizes.spaceBtwInputFields / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              children: [
                Checkbox(value: true, onChanged: null),
                Text(AppTexts.rememberMe),
              ],
            ),
            Row(
              children: [
                TextButton(
                    onPressed: () => Get.to(const ForgetPasswordScreen()),
                    child: const Text(AppTexts.forgetPassword)),
              ],
            )
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwSections),
        CustomeBtn(
            onPressed: () => Get.to(() => NavigationMenu()),
            child: const Text(AppTexts.signIn)),
        const SizedBox(height: AppSizes.spaceBtwItems),
        SizedBox(
            width: double.infinity,
            child: OutlinedButton(
                onPressed: () => Get.to(const SignupScreen()),
                child: const Text(AppTexts.createAccount))),
      ],
    );
  }
}

import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class SocailIcons extends StatelessWidget {
  const SocailIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = FunctionHelper.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dark == true ? AppColors.darkGrey : AppColors.grey,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/logo/google-icon.png",
              height: AppSizes.iconMd,
            ),
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: dark == true ? AppColors.darkGrey : AppColors.grey,
          ),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/logo/facebook-icon.png",
              height: AppSizes.iconMd,
            ),
          ),
        ),
      ],
    );
  }
}

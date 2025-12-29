import 'package:ecommerce/common/style/shadow.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = FunctionHelper.isDarkMode(context);
    return Positioned(
      bottom: 0,
      right: AppSizes.spaceBtwItems,
      left: AppSizes.spaceBtwItems,
      child: Container(
        height: AppSizes.searchBarHeight,
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            color: AppColors.white,
            boxShadow: CustomeShadow.searchBarShadow),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Iconsax.search_normal, color: AppColors.darkGrey),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text(AppTexts.searchBarTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .apply(color: dark ? AppColors.dark : AppColors.darkGrey))
          ],
        ),
      ),
    );
  }
}

import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AddToCartNavigationBar extends StatelessWidget {
  const AddToCartNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunction.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: AppSizes.defaultSpace,
          vertical: AppSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: isDark ? AppColors.darkerGrey : AppColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(AppSizes.cardRadiusLg),
          topRight: Radius.circular(AppSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        children: [
          CircularIcon(
            backgroundColor: isDark ? AppColors.darkGrey : AppColors.light,
            icon: Iconsax.minus,
            color: AppColors.darkerGrey,
            width: 40,
            height: 40,
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
          Text('2', style: Theme.of(context).textTheme.titleSmall!),
          const SizedBox(width: AppSizes.spaceBtwItems / 2),
          CircularIcon(
            backgroundColor: isDark ? AppColors.darkGrey : AppColors.light,
            icon: Iconsax.add,
            color: AppColors.black,
            width: 40,
            height: 40,
          ),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(AppSizes.md),
              backgroundColor: AppColors.black,
              side: const BorderSide(color: AppColors.black),
            ),
            onPressed: () {},
            child: const Row(
              children: [
                Icon(Iconsax.shopping_bag, color: AppColors.white),
                SizedBox(width: AppSizes.spaceBtwItems / 2),
                Text('Add to Cart'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

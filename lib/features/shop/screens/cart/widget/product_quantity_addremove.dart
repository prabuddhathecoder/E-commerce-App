import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductQauntityAddRemove extends StatelessWidget {
  const ProductQauntityAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunction.isDarkMode(context);
    return Row(
      children: [
        const SizedBox(
          width: 70,
        ),
        CircularIcon(
          backgroundColor: isDark ? AppColors.darkGrey : AppColors.light,
          icon: Iconsax.minus,
          color: isDark ? AppColors.white : AppColors.black,
          width: 40,
          height: 40,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        Text('2', style: Theme.of(context).textTheme.titleSmall!),
        const SizedBox(width: AppSizes.spaceBtwItems / 2),
        const CircularIcon(
          backgroundColor: AppColors.primary,
          icon: Icons.add,
          color: AppColors.white,
          width: 40,
          height: 40,
        ),
      ],
    );
  }
}

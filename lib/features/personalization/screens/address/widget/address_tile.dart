import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AddressTile extends StatelessWidget {
  const AddressTile({
    super.key,
    required this.isSelected,
  });

  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    final isDark = HelperFunction.isDarkMode(context);

    return RoundedContainer(
      showBorder: true,
      width: double.infinity,
      padding: const EdgeInsets.all(AppSizes.md),
      backgroundColor: isSelected
          ? AppColors.primary.withValues(alpha: 0.5)
          : isDark
              ? AppColors.black
              : AppColors.light,
      borderColor: isSelected
          ? AppColors.primary
          : isDark
              ? AppColors.light
              : AppColors.darkGrey,
      child: Stack(
        children: [
          Column(
            spacing: AppSizes.spaceBtwItems / 2,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Unknown Nager',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(overflow: TextOverflow.ellipsis),
                  maxLines: 1),
              const Text(
                '+91 9876543210',
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const Text(
                'Unknown Nager , Near Unknown Building, City - 123456, State',
              ),
            ],
          ),
          const SizedBox(width: AppSizes.spaceBtwItems),
          if (isSelected)
            const Positioned(
                bottom: 0,
                top: 0,
                right: 4,
                child: Icon(
                  Iconsax.tick_circle,
                )),
        ],
      ),
    );
  }
}

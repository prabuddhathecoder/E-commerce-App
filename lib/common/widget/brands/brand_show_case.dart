import 'package:ecommerce/common/widget/brands/brands_cart.dart';
import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class BrandShowcase extends StatelessWidget {
  const BrandShowcase({
    super.key,
    required this.images,
  });

  final List<String> images;
  // final BrandModel brand;
  @override
  Widget build(BuildContext context) {
    final dark = FunctionHelper.isDarkMode(context);
    return InkWell(
      onTap: () => {},
      child: RoundedContainer(
        showBorder: true,
        borderColor: AppColors.darkGrey,
        backgroundColor: Colors.transparent,
        margin: const EdgeInsets.only(bottom: AppSizes.spaceBtwItems),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Column(
          children: [
            /// Brand with product count
            const BrandCart(showBorder: false),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),

            /// Brand Top 3 Products images
            Row(
                children: images
                    .map((image) => brandTopProductImageWidget(dark, image))
                    .toList())
          ],
        ),
      ),
    );
  }

  Widget brandTopProductImageWidget(dark, String image) {
    return Expanded(
      child: RoundedContainer(
        height: 100,
        backgroundColor: dark ? AppColors.darkerGrey : AppColors.light,
        margin: const EdgeInsets.only(right: AppSizes.sm),
        padding: const EdgeInsets.all(AppSizes.md),
        child: Image.asset(
          fit: BoxFit.contain,
          image,
        ),
      ),
    );
  }
}

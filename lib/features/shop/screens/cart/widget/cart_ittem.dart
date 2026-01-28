import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    super.key,
  
  });

  

  @override
  Widget build(BuildContext context) {
        final bool isDark = HelperFunction.isDarkMode(context);

    return Row(
      children: [
        RoundedImageWidget(
          imageUrl: AppImages.productImage1,
          width: 60,
          height: 60,
          padding: const EdgeInsets.all(AppSizes.sm),
          backgroundColor:
              isDark ? AppColors.darkerGrey : AppColors.light,
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BrandTitleWithVerifyIcon(title: 'CMF by Nothing'),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            const ProductTitleText(
                title: 'Nothing Phone (1) - 128GB'),
            const SizedBox(height: AppSizes.spaceBtwItems / 2),
            RichText(
                text: TextSpan(
              children: [
                TextSpan(
                    text: 'Color: ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: 'White and Gray ',
                    style: Theme.of(context).textTheme.bodyLarge),
                TextSpan(
                    text: 'Storage: ',
                    style: Theme.of(context).textTheme.bodySmall),
                TextSpan(
                    text: '128GB',
                    style: Theme.of(context).textTheme.bodyLarge),
              ],
            )),
          ],
        ))
      ],
    );
  }
}
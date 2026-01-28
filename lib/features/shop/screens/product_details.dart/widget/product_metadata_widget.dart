import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/product_price_text.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProductMetaDataWidget extends StatelessWidget {
  const ProductMetaDataWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Additional widgets for product details can be added here
        Row(
          children: [
            RoundedContainer(
              backgroundColor: AppColors.yellow.withValues(alpha: 0.8),
              radius: AppSizes.sm,
              padding: const EdgeInsets.symmetric(
                  horizontal: AppSizes.sm, vertical: AppSizes.xs),
              child: Text(
                '20%',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .apply(color: Colors.black),
              ),
            ),
            const SizedBox(width: AppSizes.spaceBtwItems),
            Text('\$80.00',
                style: Theme.of(context).textTheme.titleSmall!.apply(
                      decoration: TextDecoration.lineThrough,
                    )),
            const SizedBox(width: AppSizes.spaceBtwItems),
            const ProductPriceText(
              price: '64.00',
              isLarge: true,
            ),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        const ProductTitleText(title: 'Blue Jean'),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        Row(
          children: [
            const ProductTitleText(title: 'Status:'),
            const SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            Text(
              'In Stock',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
        const SizedBox(height: AppSizes.spaceBtwItems / 1.5),
        const Row(
          children: [
            RoundedImageWidget(
                imageUrl: AppImages.bataLogo, height: 32.0, width: 32.0),
            SizedBox(
              width: AppSizes.spaceBtwItems,
            ),
            BrandTitleWithVerifyIcon(title: 'Bata'),
          ],
        ),
      ],
    );
  }
}

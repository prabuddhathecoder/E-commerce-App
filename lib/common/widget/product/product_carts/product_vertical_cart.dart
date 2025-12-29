import 'package:ecommerce/common/style/shadow.dart';
import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/common/widget/images/rouned_Image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/brands_title_text.dart';
import 'package:ecommerce/common/widget/texts/product_price_text.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductVerticalCard extends StatelessWidget {
  const ProductVerticalCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool dark = FunctionHelper.isDarkMode(context);
    return InkWell(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        width: 180,
        decoration: BoxDecoration(
          color: dark ? AppColors.dark : AppColors.light,
          borderRadius: BorderRadius.circular(AppSizes.productImageRadius),
          boxShadow: CustomeShadow.productShadow,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(AppSizes.sm),
              backgroundColor: dark ? AppColors.dark : AppColors.light,
              child: Stack(
                children: [
                  const RoundedImageWidget(imageUrl: AppImages.productImage10),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
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
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: CircularIcon(
                      icon: Iconsax.heart,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(left: AppSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Bata Shoe',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: AppSizes.spaceBtwItems / 2,
                  ),
                  //product brand
                  BrandTitleWithVerifyIcon(
                    title: 'Bata',
                  ),
                ],
              ),
            ),
            const Spacer(),
            //price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: AppSizes.sm),
                  child: ProductPriceText(
                    price: '1000',
                  ),
                ),
                Container(
                  height: AppSizes.iconLg * 1.2,
                  width: AppSizes.iconLg * 1.2,
              decoration: const BoxDecoration(    
                      color: AppColors.primary,
                      borderRadius: BorderRadius.only(
                          bottomRight:
                              Radius.circular(AppSizes.productImageRadius),
                          topLeft: Radius.circular(AppSizes.cardRadiusSm))),
                  child: const Icon(
                    Icons.add,
                    color: AppColors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

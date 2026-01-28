import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProductThambnailWidget extends StatelessWidget {
  const ProductThambnailWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunction.isDarkMode(context);
    return Container(
      color: isDark ? AppColors.darkerGrey : AppColors.light,
      child: Stack(
        children: [
          SizedBox(
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(AppSizes.productImageRadius * 2),
              child: Image.asset(AppImages.productImage1),
            ),
          ),
          Positioned(
            left: AppSizes.defaultSpace,
            right: 0,
            bottom: 30,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ),
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return RoundedImageWidget(
                        height: 80,
                        padding: const EdgeInsets.all(AppSizes.sm),
                        backgroundColor:
                            isDark ? AppColors.white : Colors.black,
                        border: Border.all(
                          color: AppColors.primary,
                        ),
                        imageUrl: AppImages.productImage1);
                  }),
            ),
          ),
          const CustomeAppBar(
            showBackArrow: true,
            action: [
              CircularIcon(
                icon: Iconsax.heart,
                color: Colors.red,
              )
            ],
          ),
        ],
      ),
    );
  }
}

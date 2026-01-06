import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/enums.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BrandCart extends StatelessWidget {
  const BrandCart({
    super.key,
    this.showBorder = true,
  });
  final bool showBorder;
  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      
      height: AppSizes.brandCardHeight,
      borderColor: AppColors.grey,
      backgroundColor: Colors.transparent,
      showBorder: showBorder,
      padding: const EdgeInsets.all(AppSizes.sm),
      child: Row(
        children: [
          const Flexible(
            child: RoundedImageWidget(
              imageUrl: AppImages.nikeLogo,
              fit: BoxFit.contain,
              backgroundColor: Colors.transparent,
            ),
          ),
          const SizedBox(
            width: AppSizes.spaceBtwItems / 2,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const BrandTitleWithVerifyIcon(
                  title: 'Bata',
                  brandTextSize: TextSizes.medium,
                ),
                Text(
                  '172 Prducts',
                  style: Theme.of(context).textTheme.labelLarge,
                  overflow: TextOverflow.ellipsis,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

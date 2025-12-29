import 'package:ecommerce/common/widget/texts/brands_title_text.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/enums.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';



class BrandTitleWithVerifyIcon extends StatelessWidget {
  const BrandTitleWithVerifyIcon({
    super.key,
    required this.title,
    this.maxLines = 1,
    this.textColor,
    this.iconColor = AppColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        /// Brand Title
        Flexible(
          child: BrandTitleText(
            title: title,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            color: textColor,
          ),
        ),
        const SizedBox(width: AppSizes.xs),

        /// Verify Icon
        const Icon(Iconsax.verify, color: AppColors.primary, size: AppSizes.iconXs)
      ],
    );
  }
}

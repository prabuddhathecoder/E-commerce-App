import 'package:ecommerce/common/widget/custome_shape/Rounded_Container.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/enums.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class BrandCart extends StatelessWidget {
  const BrandCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      height: 80,
      borderColor: AppColors.grey,
      backgroundColor: Colors.transparent,
      showBorder: true,
      padding: const EdgeInsets.all(AppSizes.sm),
      child: Row(
        children: [
          Image.asset(
            'assets/brands/bata.png',
            fit: BoxFit.contain,
          ),
          const SizedBox(
            width: AppSizes.spaceBtwItems / 2,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const BrandTitleWithVerifyIcon(
                title: 'Bata',
                brandTextSize: TextSizes.medium,
              ),
              Text(
                '172 Prducts',
                style:
                    Theme.of(context).textTheme.labelLarge,
                overflow: TextOverflow.ellipsis,
              )
            ],
          )
        ],
      ),
    );
  }
}
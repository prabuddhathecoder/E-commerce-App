import 'package:ecommerce/common/widget/brands/brand_show_case.dart';
import 'package:ecommerce/common/widget/layout/app_grid_layout.dart';
import 'package:ecommerce/common/widget/product/product_carts/product_vertical_cart.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class CategoryTabWidget extends StatelessWidget {
  const CategoryTabWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: [
        Padding(
          padding: const EdgeInsets.all(AppSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowcase(images: [
                AppImages.productImage1,
                AppImages.productImage1,
                AppImages.productImage1,
              ]),
              const BrandShowcase(images: [
                AppImages.productImage1,
                AppImages.productImage1,
                AppImages.productImage1,
              ]),
              const SizedBox(height: AppSizes.spaceBtwSections / 2),
              SecentionHeadingWidget(title: 'You migth like', onPressed: () {}),
              const SizedBox(
                height: AppSizes.spaceBtwSections / 2,
              ),
              AppGridLayout(
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return const ProductVerticalCard();
                  })
            ],
          ),
        )
      ],
    );
  }
}

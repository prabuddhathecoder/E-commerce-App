import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/texts/product_price_text.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/shop/screens/product_details.dart/widget/chip_choice_eidget.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class ProductAttributeWidget extends StatelessWidget {
  const ProductAttributeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunction.isDarkMode(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          // Additional widgets can be added here
          RoundedContainer(
            padding: const EdgeInsets.all(AppSizes.md),
            backgroundColor: isDark ? AppColors.darkGrey : AppColors.grey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  const SecentionHeadingWidget(
                      title: 'Validations', showActionButton: false),
                  const SizedBox(width: AppSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Price: ',
                            smallSize: true,
                          ),
                          Text(
                            '250',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: AppSizes.spaceBtwItems),
                          const ProductPriceText(price: '200'),
                        ],
                      ),
                      Row(
                        children: [
                          const ProductTitleText(
                            title: 'Stock: ',
                            smallSize: true,
                          ),
                          Text(
                            'In stock',
                            style: Theme.of(context).textTheme.titleMedium!,
                          ),
                        ],
                      ),
                    ],
                  ),
                ]),
                const ProductTitleText(
                    title:
                        'This product is iphone 11 with 512BG RAM and 1TB storage',
                    smallSize: true),
              ],
            ),
          ),
          const SizedBox(height: AppSizes.spaceBtwItems),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SecentionHeadingWidget(
                  title: 'Colors', showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              Wrap(
                runSpacing: AppSizes.spaceBtwItems / 2,
                spacing: AppSizes.spaceBtwItems,
                children: [
                  ChipChoiceWidget(
                    text: 'Red',
                    isSelected: true,
                    onSelected: (bool p1) {},
                  ),
                  ChipChoiceWidget(
                    text: 'Yellow',
                    isSelected: false,
                    onSelected: (bool p1) {},
                  ),
                  ChipChoiceWidget(
                    text: 'Green',
                    isSelected: false,
                    onSelected: (bool p1) {},
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SecentionHeadingWidget(
                  title: 'Size', showActionButton: false),
              const SizedBox(height: AppSizes.spaceBtwItems / 2),
              Wrap(
                runSpacing: AppSizes.spaceBtwItems / 2,
                spacing: AppSizes.spaceBtwItems,
                children: [
                  ChipChoiceWidget(
                    text: 'Medium',
                    isSelected: true,
                    onSelected: (bool p1) {},
                  ),
                  ChipChoiceWidget(
                    text: 'Small',
                    isSelected: false,
                    onSelected: (bool p1) {},
                  ),
                  ChipChoiceWidget(
                    text: 'Large',
                    isSelected: false,
                    onSelected: (bool p1) {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

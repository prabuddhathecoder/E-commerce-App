import 'package:ecommerce/common/widget/vertical_image_text/vertical_image_text.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';

class HomeCategoryWidget extends StatelessWidget {
  const HomeCategoryWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSizes.spaceBtwSections),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppTexts.popularCategories,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .apply(color: AppColors.white),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwSections / 2,
          ),
          SizedBox(
              height: 80,
              child: ListView.separated(
                  separatorBuilder: (context, index) => const SizedBox(
                        width: AppSizes.spaceBtwItems,
                      ),
                  itemCount: 10,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return const VerticalImageWidget(
                      categoryNm: 'sport categories',
                      iconPath: AppImages.sportsIcon,
                    );
                  }))
        ],
      ),
    );
  }
}

import 'package:ecommerce/common/widget/custome_shape/circular_Container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class VerticalImageWidget extends StatelessWidget {
  const VerticalImageWidget({
    super.key,
    required this.categoryNm,
    required this.iconPath,
    this.bgColor,
    this.callback,
  });
  final String categoryNm;
  final String iconPath;
  final Color? bgColor;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    bool dark = FunctionHelper.isDarkMode(context);

    return InkWell(
      onTap: callback,
      child: Column(
        children: [
          CircularContainer(
            height: 56,
            width: 56,
            backgroundColor:
                bgColor ?? (dark ? AppColors.dark : AppColors.white),
            padding: const EdgeInsets.all(AppSizes.sm),
            child: Image.asset(
              iconPath,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: AppSizes.spaceBtwItems / 2,
          ),
          SizedBox(
            width: 55,
            child: Text(
              categoryNm,
              style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: AppColors.white, overflow: TextOverflow.ellipsis),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}

import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  const CircularImageWidget(
      {super.key,
      this.width = 56,
      this.height = 56,
      this.overlayColor,
      this.backgroundColor,
      required this.image,
      this.fit = BoxFit.cover,
      this.padding = AppSizes.sm,
      this.isNetworkImage = false,
      this.borderWidth = 1.0});

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding, borderWidth;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);

    return Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            color: backgroundColor ?? (dark ? AppColors.dark : AppColors.light),
            borderRadius: BorderRadius.circular(100),
            border: Border.all(width: borderWidth, color: AppColors.primary)),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
          child: Center(
            child: isNetworkImage
                ? Image.network(image, fit: BoxFit.contain)
                : Image(
                    fit: fit,
                    image: AssetImage(image),
                    color: overlayColor,
                  ),
          ),
        ));
  }
}

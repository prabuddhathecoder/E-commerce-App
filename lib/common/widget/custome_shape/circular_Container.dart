import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    this.heigth = 400,
    this.width = 400,
    this.radius = 400,
    this.padding,
    this.margin,
    this.backgraoundColor,
    this.child,
  });

  final double heigth, width, radius;
  final EdgeInsetsGeometry? padding, margin;
  final Color? backgraoundColor;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: heigth,
        width: width,
        padding: padding,
        margin: margin,
        decoration: BoxDecoration(
            color: backgraoundColor ?? AppColors.white,
            borderRadius: BorderRadius.circular(radius)),
        child: child);
  }
}

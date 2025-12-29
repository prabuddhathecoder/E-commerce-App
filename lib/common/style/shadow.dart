import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:flutter/material.dart';

class CustomeShadow {
  CustomeShadow._();

  static List<BoxShadow> searchBarShadow = [
    BoxShadow(
        color: AppColors.black.withValues(alpha: 0.1),
        spreadRadius: 2.0,
        blurRadius: 4.0)
  ];
  static List<BoxShadow> productShadow = [
    BoxShadow(
        color: AppColors.darkGrey.withValues(alpha: 0.1),
        spreadRadius: 7,
        blurRadius: 50,
        offset: const Offset(0, 2))
  ];
}

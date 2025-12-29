import 'package:ecommerce/common/widget/custome_shape/custome_rounded_Home_container.dart';
import 'package:ecommerce/common/widget/custome_shape/circular_Container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.child,
  });
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return CustomeRoundedContainer(
      child: Container(
        height: AppSizes.homePrimaryHeaderHeight,
        decoration: const BoxDecoration(color: AppColors.primary),
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -160,
              child: CircularContainer(
                heigth: AppSizes.homePrimaryHeaderHeight,
                width: AppSizes.homePrimaryHeaderHeight,
                backgraoundColor: AppColors.white.withValues(alpha: 0.1),
              ),
            ),
            Positioned(
                top: 50,
                right: -250,
                child: CircularContainer(
                  heigth: AppSizes.homePrimaryHeaderHeight,
                  width: AppSizes.homePrimaryHeaderHeight,
                  backgraoundColor: AppColors.white.withValues(alpha: 0.1),
                )),
            child
          ],
        ),
      ),
    );
  }
}

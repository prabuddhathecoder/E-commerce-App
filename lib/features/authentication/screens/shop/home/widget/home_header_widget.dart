import 'package:ecommerce/common/widget/custome_shape/Rounded_Container.dart';
import 'package:ecommerce/common/widget/custome_shape/custome_rounded_Home_container.dart';
import 'package:ecommerce/common/widget/custome_shape/circular_Container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return CustomeRoundedContainer(
      child: Container(
        height: height,
        color: AppColors.primary,
        child: Stack(
          children: [
            /// Circular Container
            Positioned(
              top: -150,
              right: -160,
              child: CircularContainer(
                  height: AppSizes.homePrimaryHeaderHeight,
                  width: AppSizes.homePrimaryHeaderHeight,
                  backgroundColor: AppColors.white.withValues(alpha: 0.1)),
            ),

            /// Circular Container
            Positioned(
                top: 50,
                right: -250,
                child: CircularContainer(
                  height: AppSizes.homePrimaryHeaderHeight,
                  width: AppSizes.homePrimaryHeaderHeight,
                  backgroundColor: AppColors.white.withValues(alpha: 0.1),
                )),

            /// Child
            child
          ],
        ),
      ),
    );
  }
}

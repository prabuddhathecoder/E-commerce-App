import 'package:ecommerce/common/widget/custome_shape/custome_header.dart';
import 'package:ecommerce/common/widget/custome_shape/circular_container.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class PrimaryHeaderWidget extends StatelessWidget {
  const PrimaryHeaderWidget({
    super.key,
    required this.child,
    required this.height,
  });

  final Widget child;
  final double height;
  @override
  Widget build(BuildContext context) {
    return CustomeHeader(
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

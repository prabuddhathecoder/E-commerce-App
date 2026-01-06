import 'package:ecommerce/common/widget/custome_shape/primary_header_widget.dart';
import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/common/widget/images/user_circular_image.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class ProfileHeaderWidget extends StatelessWidget {
  const ProfileHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: AppSizes.profilePrimaryHeaderHeight + 60),
        PrimaryHeaderWidget(
            height: AppSizes.profilePrimaryHeaderHeight, child: Container()),
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
              child: UserCircularImage()),
        )
      ],
    );
  }
}


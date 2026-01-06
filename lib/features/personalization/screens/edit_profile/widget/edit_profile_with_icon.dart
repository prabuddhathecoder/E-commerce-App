import 'package:ecommerce/common/widget/images/user_circular_image.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EditProfileWithIcon extends StatelessWidget {
  const EditProfileWithIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Center(child: UserCircularImage()),
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          bottom: 0,
          child: Center(
            child: IconButton(
              icon: const Icon(Iconsax.edit),
              onPressed: () {},
            ),
          ),
        )
      ],
    );
  }
}

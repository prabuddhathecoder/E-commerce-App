import 'package:ecommerce/common/widget/images/circular_image.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:flutter/material.dart';

class UserCircularImage extends StatelessWidget {
  const UserCircularImage({
    super.key,
    this.imgUrl,
  });
  final String? imgUrl;

  @override
  Widget build(BuildContext context) {
    return CircularImageWidget(
      height: 120,
      width: 120,
      image: imgUrl ?? AppImages.user,
      borderWidth: 5,
    );
  }
}

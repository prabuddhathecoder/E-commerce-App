import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/common/widget/images/rouned_Image.dart';
import 'package:ecommerce/features/authentication/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomePromoSlider extends StatelessWidget {
  const HomePromoSlider({
    super.key,
    required this.images,
  });

  final List<String> images;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return CarouselSlider(
      items: images.map((img) => RoundedImageWidget(imageUrl: img)).toList(),
      carouselController: controller.carouselSliderController,
      options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, resone) => controller.onPageChanged(index)),
    );
  }
}

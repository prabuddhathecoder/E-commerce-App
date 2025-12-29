import 'package:ecommerce/features/authentication/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BannerDotIndicatorWidget extends StatelessWidget {
  const BannerDotIndicatorWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomeController());
    return Obx(
      () => SmoothPageIndicator(
        count: 5,
        effect: const ExpandingDotsEffect(dotHeight: 5.0),
        controller: PageController(initialPage: controller.currentIndex.value),
      ),
    );
  }
}

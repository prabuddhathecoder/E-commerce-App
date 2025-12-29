import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/style/shadow.dart';
import 'package:ecommerce/common/widget/custome_shape/circular_Container.dart';
import 'package:ecommerce/common/widget/images/rouned_Image.dart';
import 'package:ecommerce/common/widget/product/product_carts/product_vertical_cart.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/authentication/controller/home_controller.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/banner_dot_slider.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_appbar_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_category_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_header_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_promo_slider.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/search_bar_widget.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Upper
            Stack(
              children: [
                Container(
                  //color: Colors.red,
                  height: AppSizes.homePrimaryHeaderHeight,
                ),
                const HomeHeaderWidget(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HomeAppbar(),
                      SizedBox(
                        height: AppSizes.spaceBtwSections,
                      ),
                      HomeCategoryWidget()
                    ],
                  ),
                ),
                const SearchBarWidget(),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),

            // lower
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: HomePromoSlider(
                images: [
                  AppImages.homeBanner1,
                  AppImages.homeBanner2,
                  AppImages.homeBanner3,
                  AppImages.homeBanner4,
                  AppImages.homeBanner5,
                ],
              ),
            ),
            const SizedBox(
              height: AppSizes.spaceBtwItems,
            ),
            const BannerDotIndicatorWidget(),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            const SecentionHeaderWidget(
              title: AppTexts.popularProducts,
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections,
            ),
            const ProductVerticalCard()
          ],
        ),
      ),
    );
  }
}



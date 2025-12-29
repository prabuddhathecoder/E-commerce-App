import 'package:ecommerce/common/widget/layout/app_grid_layout.dart';
import 'package:ecommerce/common/widget/product/product_carts/product_vertical_cart.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/banner_dot_slider.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_appbar_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_category_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_header_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_promo_slider.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/search_bar_widget.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';

import 'package:flutter/material.dart';


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
                  height: AppSizes.homePrimaryHeaderHeight,
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
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: AppSizes.defaultSpace),
              child: Column(
                children: [
                  const HomePromoSlider(
                    images: [
                      AppImages.homeBanner1,
                      AppImages.homeBanner2,
                      AppImages.homeBanner3,
                      AppImages.homeBanner4,
                      AppImages.homeBanner5,
                    ],
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
                  AppGridLayout(
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return const ProductVerticalCard();
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

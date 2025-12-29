import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/brands/brands_cart.dart';
import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/product/cart/cart_icon.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_appbar_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_category_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_header_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/search_bar_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/store/widget/store_primary_header_widget.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/enums.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScroll) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: 300,
                pinned: true,
                floating: true,
                flexibleSpace: Column(
                  children: [
                    const StorePrimaryHeaderWidget(),
                    const SizedBox(
                      height: AppSizes.spaceBtwItems,
                    ),
                    Padding(
                      padding: const EdgeInsetsGeometry.symmetric(
                          horizontal: AppSizes.defaultSpace),
                      child: Column(
                        children: [
                          SecentionHeaderWidget(
                            title: 'Brands',
                            onPressed: () {},
                          ),
                          SizedBox(
                            height: 70,
                            child: ListView.separated(
                                separatorBuilder: (context, index) =>
                                    const SizedBox(
                                      width: AppSizes.spaceBtwItems,
                                    ),
                                shrinkWrap: true,
                                scrollDirection: Axis.horizontal,
                                itemCount: 5,
                                itemBuilder: (context, index) {
                                  return const BrandCart();
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ];
          },
          body: Container()),
    );
  }
}

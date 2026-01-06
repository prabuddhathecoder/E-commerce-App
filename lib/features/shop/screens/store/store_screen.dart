import 'package:ecommerce/common/widget/appbar/custome_tabbar.dart';
import 'package:ecommerce/common/widget/brands/brands_cart.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';

import 'package:ecommerce/features/shop/screens/store/widget/categoryTabWidget.dart';
import 'package:ecommerce/features/shop/screens/store/widget/store_primary_header_widget.dart';

import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final bool dark = FunctionHelper.isDarkMode(context);
    return Scaffold(
      body: DefaultTabController(
        length: 5,
        child: NestedScrollView(
            headerSliverBuilder: (context, innerBoxIsScroll) {
              return [
                SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 340,
                  pinned: true,
                  floating: false,
                  flexibleSpace: SingleChildScrollView(
                    child: Column(
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
                              SecentionHeadingWidget(
                                title: 'Brands',
                                onPressed: () {},
                              ),
                              SizedBox(
                                height: AppSizes.brandCardHeight,
                                child: ListView.separated(
                                    separatorBuilder: (context, index) =>
                                        const SizedBox(
                                          width: AppSizes.spaceBtwItems,
                                        ),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.horizontal,
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return const SizedBox(
                                          width: AppSizes.brandCardWidth,
                                          child: BrandCart());
                                    }),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  bottom: const CustomeTabbar(
                    tabs: [
                      Text('Sport'),
                      Text('Furniture'),
                      Text('Fasion'),
                      Text('Electronic'),
                      Text('Home Product'),
                    ],
                  ),
                )
              ];
            },
            body: const TabBarView(
              children: [
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),
                CategoryTabWidget(),
              ],
            )),
      ),
    );
  }
}

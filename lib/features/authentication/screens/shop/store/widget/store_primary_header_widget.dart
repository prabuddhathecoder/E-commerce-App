import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/product/cart/cart_icon.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/home_header_widget.dart';
import 'package:ecommerce/features/authentication/screens/shop/home/widget/search_bar_widget.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class StorePrimaryHeaderWidget extends StatelessWidget {
  const StorePrimaryHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          // color: Colors.red,
          height: AppSizes.storePrimaryHeaderHeight,
        ),
        HomeHeaderWidget(
          height: AppSizes.storePrimaryHeaderHeight,
          child: CustomeAppBar(
            title: Text(
              'Store',
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: AppColors.white),
            ),
            action: const [CartIcon()],
          ),
        ),
        const SearchBarWidget(),
      ],
    );
  }
}

import 'package:ecommerce/features/shop/screens/cart/CartScreen.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartIcon extends StatelessWidget {
  const CartIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = HelperFunction.isDarkMode(context);
    return InkWell(
      onTap: () => Get.to(() => const CartScreen()),
      child: Stack(
        children: [
          const SizedBox(
            height: 45,
            width: 45,
            child: Icon(
              Iconsax.shopping_bag,
              color: AppColors.light,
            ),
          ),
          Positioned(
            right: 6,
            top: 0,
            child: Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                  color: dark ? AppColors.dark : AppColors.light,
                  shape: BoxShape.circle),
              child: Center(
                child: Text(
                  '2',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .apply(color: dark ? AppColors.white : AppColors.dark),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

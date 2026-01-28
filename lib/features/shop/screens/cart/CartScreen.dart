import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/features/shop/screens/cart/widget/cart_ittem.dart';
import 'package:ecommerce/features/shop/screens/cart/widget/product_quantity_addremove.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      appBar: CustomeAppBar(
        showBackArrow: true,
        title: Text(
          'Cart',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ScreenPadding.screenPadding,
          child: ListView.separated(
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(height: AppSizes.spaceBtwItems);
            },
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const Column(
                children: [
                  CartItem(),
                  SizedBox(height: AppSizes.spaceBtwItems),
                  Row(
                    children: [
                      ProductQauntityAddRemove(),
                      Spacer(),
                      ProductTitleText(
                        title: '\$499.00',
                      ),
                    ],
                  )
                ],
              );
            },
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsetsGeometry.all(
          AppSizes.defaultSpace,
        ),
        child: CustomeBtn(
          onPressed: () {},
          child: const Text('Checkout  \$999.00'),
        ),
      ),
    );
  }
}

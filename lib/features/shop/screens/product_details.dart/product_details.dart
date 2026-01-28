import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/widget/custome_shape/rounded_container.dart';
import 'package:ecommerce/common/widget/icons/circular_icons.dart';
import 'package:ecommerce/common/widget/images/rounded_image.dart';
import 'package:ecommerce/common/widget/texts/brand_title_text_with_icon.dart';
import 'package:ecommerce/common/widget/texts/brands_title_text.dart';
import 'package:ecommerce/common/widget/texts/product_price_text.dart';
import 'package:ecommerce/common/widget/texts/product_title_text.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/shop/screens/product_details.dart/widget/addtocart_navigation_bar_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details.dart/widget/product_atrribute_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details.dart/widget/product_metadata_widget.dart';
import 'package:ecommerce/features/shop/screens/product_details.dart/widget/product_thambnail_widget.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/app_images.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  final String productId;

  const ProductDetailsScreen({super.key, required this.productId});

  @override
  Widget build(BuildContext context) {
    // Implementation of the product details screen
    bool isDark = HelperFunction.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductThambnailWidget(),
            Padding(
              padding: ScreenPadding.screenPadding,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProductMetaDataWidget(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const ProductAttributeWidget(),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  CustomeBtn(
                    onPressed: () {},
                    child: const Text('Checkout'),
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections),
                  const SecentionHeadingWidget(
                      title: 'Discription', showActionButton: false),
                  const SizedBox(height: AppSizes.spaceBtwItems / 2),
                  const ReadMoreText(
                    'This is a detailed description of the product. It provides all the necessary information that a customer might need before making a purchase decision. The description can be quite long, so it is often truncated with a "Read more" option to expand the text and view the full content.',
                    trimLines: 2,
                    colorClickableText: AppColors.primary,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Read more',
                    trimExpandedText: ' Show less',
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const AddToCartNavigationBar(),
    );
  }
}

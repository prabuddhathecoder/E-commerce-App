
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/personalization/screens/profile/widget/profile_header_widget.dart';
import 'package:ecommerce/features/personalization/screens/profile/widget/profile_heading_Tile.dart';
import 'package:ecommerce/features/personalization/screens/profile/widget/setting_menu_tile.dart';

import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProfileHeaderWidget(),
            Padding(
              padding: const EdgeInsets.all(AppSizes.defaultSpace),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const ProfileHeadingTile(),
                  const SizedBox(
                    height: AppSizes.spaceBtwItems,
                  ),
                  const SecentionHeadingWidget(
                    title: 'Account Settings',
                    showActionButton: false,
                  ),
                  const SettingMenuTile(
                    title: 'My Addrass',
                    subTitle: 'Set Homw Delivery Address',
                    icon: Iconsax.safe_home,
                  ),
                  const SettingMenuTile(
                    title: 'My Cart',
                    subTitle: 'Add,remove product abd move to chackout',
                    icon: Iconsax.card_tick,
                  ),
                  const SettingMenuTile(
                    title: 'My Order',
                    subTitle: 'In-Progess and completed orders',
                    icon: Icons.shopping_bag,
                  ),
                  const SizedBox(height: AppSizes.spaceBtwSections * 2),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {}, child: const Text('Logout')),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

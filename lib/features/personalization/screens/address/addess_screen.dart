import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/features/personalization/screens/address/add_new_address.dart';
import 'package:ecommerce/features/personalization/screens/address/widget/address_tile.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class AddessScreen extends StatelessWidget {
  const AddessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(
        showBackArrow: true,
        title: Text('Address', style: Theme.of(context).textTheme.titleMedium),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: ScreenPadding.screenPadding,
          child: Column(
            spacing: AppSizes.spaceBtwItems,
            children: [
              AddressTile(isSelected: true),
              AddressTile(isSelected: false),
              AddressTile(isSelected: false),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primary,
        child: const Icon(Icons.add, color: AppColors.white),
        onPressed: () => Get.to(() => const AddNewScreen()),
      ),
    );
  }
}

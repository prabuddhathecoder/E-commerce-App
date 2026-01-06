import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/texts/secention_herader.dart';
import 'package:ecommerce/features/personalization/screens/edit_profile/widget/edit_items_menu.dart';
import 'package:ecommerce/features/personalization/screens/edit_profile/widget/edit_profile_with_icon.dart';
import 'package:ecommerce/utils/constant/app_colors.dart';

import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(
        showBackArrow: true,
        title: Text(
          'Edit Profile',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ScreenPadding.screenPadding,
          child: Column(
            children: [
              const EditProfileWithIcon(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const Divider(),
              const SizedBox(
                height: AppSizes.spaceBtwSections,
              ),
              const SecentionHeadingWidget(
                title: 'Account Settings',
                showActionButton: false,
              ),
              EditItemsMenuWidget(
                  heading: 'Name', title: 'Unknown Pro', onTab: () {}),
              EditItemsMenuWidget(
                  heading: 'UserName', title: 'Unknown358', onTab: () {}),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const Divider(),
              const SizedBox(height: AppSizes.spaceBtwSections),
              const SecentionHeadingWidget(
                title: 'Profile Settings',
                showActionButton: false,
              ),
              EditItemsMenuWidget(
                  heading: 'Id', title: 'Agent47', onTab: () {}),
              EditItemsMenuWidget(
                  heading: 'Name', title: 'Unknown Pro', onTab: () {}),
              EditItemsMenuWidget(
                  heading: 'Email', title: 'Unknown@gmail.com', onTab: () {}),
              EditItemsMenuWidget(
                  heading: 'Gender', title: 'Male', onTab: () {}),
              EditItemsMenuWidget(
                  heading: 'Name', title: 'Unknown Pro', onTab: () {}),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              const Divider(),
              const SizedBox(
                height: AppSizes.spaceBtwItems,
              ),
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Account Closed',
                    style: TextStyle(color: Colors.red),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

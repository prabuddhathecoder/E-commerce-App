import 'package:ecommerce/features/personalization/screens/edit_profile/edit_profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class ProfileHeadingTile extends StatelessWidget {
  const ProfileHeadingTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: Text(
        'Unkown User',
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      subtitle: Text(
        'unkownuser@gmail.com',
        style: Theme.of(context).textTheme.bodySmall,
      ),
      trailing: IconButton(
          onPressed: () => Get.to(() => const EditProfileScreen()),
          icon: const Icon(Iconsax.edit)),
    );
  }
}

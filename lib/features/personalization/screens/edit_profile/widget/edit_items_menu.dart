import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class EditItemsMenuWidget extends StatelessWidget {
  const EditItemsMenuWidget({
    super.key,
    required this.heading,
    required this.title,
    required this.onTab,
  });
  final String heading, title;
  final VoidCallback onTab;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: AppSizes.spaceBtwItems / 2),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            heading,
            style: Theme.of(context).textTheme.bodySmall,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.bodyMedium,
            overflow: TextOverflow.ellipsis,
          ),
          IconButton(
            icon: const Icon(Iconsax.arrow_right_2),
            onPressed: onTab,
          )
        ],
      ),
    );
  }
}

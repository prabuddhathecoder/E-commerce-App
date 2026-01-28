import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/common/widget/appbar/custome_appbar.dart';
import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class AddNewScreen extends StatelessWidget {
  const AddNewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(
        showBackArrow: true,
        title: Text(
          'Add Address',
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: ScreenPadding.screenPadding,
          child: Column(
            spacing: AppSizes.spaceBtwItems,
            children: [
              const TextInputWidget(
                  name: 'Name', icon: Iconsax.user_cirlce_add),
              const TextInputWidget(name: 'Phone Number', icon: Icons.phone),
              const Row(
                children: [
                  Expanded(
                    child:
                        TextInputWidget(name: 'Street', icon: Iconsax.building),
                  ),
                  Expanded(
                    child: TextInputWidget(
                        name: 'Postal Code', icon: Iconsax.code),
                  ),
                ],
              ),
              const Row(
                children: [
                  Expanded(
                    child:
                        TextInputWidget(name: 'City', icon: Iconsax.building_4),
                  ),
                  Expanded(
                    child: TextInputWidget(name: 'State', icon: Iconsax.map_1),
                  ),
                ],
              ),
              const TextInputWidget(name: 'Country', icon: Iconsax.global),
              CustomeBtn(
                onPressed: () {},
                child: Text(
                  'Save ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TextInputWidget extends StatelessWidget {
  const TextInputWidget({
    super.key,
    required this.name,
    required this.icon,
  });
  final String name;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(labelText: name, prefixIcon: Icon(icon)),
    );
  }
}

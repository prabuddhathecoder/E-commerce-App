import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.firstName,
                ),
              ),
            ),
            SizedBox(
              width: AppSizes.spaceBtwInputFields,
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.user),
                  labelText: AppTexts.lastName,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.direct_right),
            labelText: AppTexts.email,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Iconsax.call),
            labelText: AppTexts.phoneNumber,
          ),
        ),
        SizedBox(height: AppSizes.spaceBtwInputFields),
        TextField(
          decoration: InputDecoration(
              prefixIcon: Icon(Iconsax.password_check),
              labelText: AppTexts.password,
              suffixIcon: Icon(Iconsax.eye)),
        ),
      ],
    );
  }
}

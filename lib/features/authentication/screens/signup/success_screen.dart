import 'package:ecommerce/common/widget/btn/custome_btn.dart';
import 'package:ecommerce/common/style/screen_padding.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  final String title;
  final String subtitle;
  final String imgUrl;

  final VoidCallback onContinue;

  const SuccessScreen(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.imgUrl,
      required this.onContinue});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: ScreenPadding.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(imgUrl,
                    height: AppDeviceHelper.getScreenWidth(context) * 0.4),
                const SizedBox(height: AppSizes.spaceBtwSections),
                Text(
                  title,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: AppSizes.spaceBtwItems),
                Text(
                  subtitle,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
            const SizedBox(
              height: AppSizes.spaceBtwSections * 2,
            ),
            CustomeBtn(
                onPressed: () => onContinue(),
                child: const Text(AppTexts.uContinue)),
          ],
        ),
      ),
    );
  }
}

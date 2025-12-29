import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class OnBoardingPage extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  const OnBoardingPage(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: AppDeviceHelper.getAppBarHeight()),
      child: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(imagePath),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

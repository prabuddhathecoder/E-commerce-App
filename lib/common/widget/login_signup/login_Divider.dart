import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    final dark = FunctionHelper.isDarkMode(context);

    return Row(
      children: [
        Expanded(
            child: Divider(
          indent: 60,
          endIndent: 5,
          color: dark == true ? AppColors.darkGrey : AppColors.grey,
        )),
        Text(title),
        Expanded(
            child: Divider(
          indent: 5,
          endIndent: 60,
          color: dark == true ? AppColors.darkGrey : AppColors.grey,
        ))
      ],
    );
  }
}

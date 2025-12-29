import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';


class SecentionHeaderWidget extends StatelessWidget {
  const SecentionHeaderWidget(
      {super.key,
      required this.title,
      this.buttonTitle = AppTexts.viewAll,
      this.onPressed,
      this.showActionButton = true});

  final String title, buttonTitle;
  final VoidCallback? onPressed;
  final bool showActionButton;

  @override
  Widget build(BuildContext context) {
    final bool dark = FunctionHelper.isDarkMode(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context).textTheme.headlineSmall,
            maxLines: 1,
            overflow: TextOverflow.ellipsis),
        if (showActionButton)
          TextButton(
              onPressed: onPressed,
              child: Text(
                buttonTitle,
                style: TextStyle(
                    color: dark ? AppColors.light : AppColors.primary),
              ))
      ],
    );
  }
}

import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/texts.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class PolicyAndTerm extends StatelessWidget {
  const PolicyAndTerm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final isdark = FunctionHelper.isDarkMode(context);
    return Row(
      children: [
        Checkbox(value: true, onChanged: (val) {}),
        RichText(
            text: TextSpan(
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
              const TextSpan(text: AppTexts.iAgreeTo),
              const WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(
                  text: AppTexts.privacyPolicy,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:
                          isdark == true ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isdark == true
                          ? AppColors.white
                          : AppColors.primary)),
              const WidgetSpan(child: SizedBox(width: 5)),
              const TextSpan(text: AppTexts.and),
              const WidgetSpan(child: SizedBox(width: 5)),
              TextSpan(
                  text: AppTexts.termsOfUse,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color:
                          isdark == true ? AppColors.white : AppColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor: isdark == true
                          ? AppColors.white
                          : AppColors.primary)),
            ])),
      ],
    );
  }
}

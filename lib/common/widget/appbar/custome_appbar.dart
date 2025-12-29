import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/constant/sizes.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class CustomeAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomeAppBar(
      {super.key,
      this.title,
      this.leadingIcon,
      this.showBackArrow = false,
      this.action,
      this.leadingCallback});

  final Widget? title;
  final IconData? leadingIcon;
  final bool showBackArrow;
  final List<Widget>? action;
  final VoidCallback? leadingCallback;

  @override
  Widget build(BuildContext context) {
    bool dark = FunctionHelper.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        leading: showBackArrow
            ? Icon(
                Icons.arrow_back,
                color: dark ? AppColors.white : AppColors.dark,
              )
            : leadingIcon != null
                ? IconButton(
                    onPressed: leadingCallback,
                    icon: Icon(
                      leadingIcon,
                      color: dark ? AppColors.white : AppColors.dark,
                    ),
                  )
                : null,
        actions: action,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceHelper.getAppBarHeight());
}

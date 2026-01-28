import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:flutter/material.dart';

class CustomeTabbar extends StatelessWidget implements PreferredSizeWidget {
  /// if want to add background color to tabbar so  thats why we use
  /// customm tabbar with preferedSizeWidget
  const CustomeTabbar({super.key, required this.tabs});

  final List<Widget> tabs;
  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDarkMode(context);
    return Material(
      color: dark ? AppColors.black : AppColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        labelColor: dark ? AppColors.white : AppColors.primary,
        indicatorColor: AppColors.primary,
        unselectedLabelColor: AppColors.darkGrey,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppDeviceHelper.getAppBarHeight());
}

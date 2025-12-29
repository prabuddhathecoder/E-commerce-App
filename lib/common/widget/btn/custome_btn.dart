import 'package:ecommerce/utils/helper/device_helpers.dart';
import 'package:flutter/material.dart';

class CustomeBtn extends StatelessWidget {
  final VoidCallback? onPressed;
  final Widget child;

  const CustomeBtn({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: AppDeviceHelper.getScreenWidth(context),
        child: ElevatedButton(onPressed: onPressed, child: child));
  }
}

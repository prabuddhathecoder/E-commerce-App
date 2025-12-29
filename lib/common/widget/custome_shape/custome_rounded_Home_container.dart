import 'package:ecommerce/common/widget/custome_shape/clipper/rounded_clipper.dart';
import 'package:flutter/material.dart';

class CustomeRoundedContainer extends StatelessWidget {
  const CustomeRoundedContainer({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomRoundedClipper(),
      child: child,
    );
  }
}

import 'package:ecommerce/utils/constant/texts.dart';
import 'package:flutter/material.dart';

class ForgetPassForm extends StatelessWidget {
  const ForgetPassForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.email),
            labelText: AppTexts.email,
          ),
        ),
      ],
    );
  }
}
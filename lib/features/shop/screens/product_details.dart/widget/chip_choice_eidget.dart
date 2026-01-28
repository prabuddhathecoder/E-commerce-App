import 'package:ecommerce/common/widget/custome_shape/circular_container.dart';
import 'package:ecommerce/utils/helper/function_helper.dart';
import 'package:ecommerce/utils/helper/get_help_function.dart';
import 'package:flutter/material.dart';

class ChipChoiceWidget extends StatelessWidget {
  const ChipChoiceWidget({
    super.key,
    required this.text,
    required this.isSelected,
    required this.onSelected,
  });
  final String text;
  final bool isSelected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    final isColor = GetHelpFunctions.getColor(text) != null;
    return ChoiceChip(
      label: isColor ? const SizedBox.shrink() : Text(text),
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : null,
      ),
      selected: isSelected,
      onSelected: onSelected,
      labelPadding: isColor ? const EdgeInsets.all(0) : null,
      padding: isColor ? const EdgeInsets.all(0) : null,
      backgroundColor: isColor ? GetHelpFunctions.getColor(text) : null,
      avatar: isColor
          ? CircularContainer(
              height: 50.0,
              width: 50.0,
              backgroundColor:
                  GetHelpFunctions.getColor(text) ?? Colors.transparent,
            )
          : null,
      shape: isColor ? const CircleBorder() : null,
    );
  }
}

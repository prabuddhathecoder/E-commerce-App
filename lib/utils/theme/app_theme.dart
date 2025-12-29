import 'package:ecommerce/utils/constant/app_colors.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/Textfield_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/appbar_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/bottomsheet_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/checkBox_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/chip_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/elevated_btn_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/outLined_btn_theme.dart';
import 'package:ecommerce/utils/theme/theme_widget.dart/text_theme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    fontFamily: '',
    brightness: Brightness.light,
    disabledColor: AppColors.grey,
    textTheme: AppTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.white,
    chipTheme: AppChipTheme.lightChipTheme,
    appBarTheme: MyAppBarTheme.lightAppBarTheme,
    checkboxTheme: MyCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme:MyBottomSheetTheme.lightBottomSheetTheme ,
    elevatedButtonTheme:MyElevatedButtonTheme.lightElevatedButtonTheme ,

    inputDecorationTheme: MyTextFormFieldTheme.lightInputDecorationTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
  );
  static final ThemeData darkTheme = ThemeData(
    
    useMaterial3: true,
    primaryColor: AppColors.primary,
    fontFamily: '',
    brightness: Brightness.dark,
    disabledColor: AppColors.grey,
    textTheme: AppTextTheme.darkTextTheme,
    scaffoldBackgroundColor: AppColors.black,
    chipTheme: AppChipTheme.darkChipTheme,
    appBarTheme: MyAppBarTheme.darkAppBarTheme,
    checkboxTheme: MyCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme:MyBottomSheetTheme.darkBottomSheetTheme ,
    elevatedButtonTheme:MyElevatedButtonTheme.darkElevatedButtonTheme ,

    inputDecorationTheme: MyTextFormFieldTheme.darkInputDecorationTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}

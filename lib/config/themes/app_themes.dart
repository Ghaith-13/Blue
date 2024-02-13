import 'package:flutter/material.dart';

import '../../core/utils/app_colors.dart';

ThemeData appTheme() {
  return ThemeData(
    primaryColor: AppColors.primaryColor,
    hintColor: AppColors.primaryColor,
    textSelectionTheme: const TextSelectionThemeData(
        selectionColor: AppColors.secondryColor,
        cursorColor: AppColors.secondryColor,
        selectionHandleColor: AppColors.secondryColor),
    inputDecorationTheme: const InputDecorationTheme(
      labelStyle: TextStyle(color: AppColors.secondryColor),
      hintStyle: TextStyle(color: AppColors.secondryColor),
      errorStyle: TextStyle(color: Colors.red),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondryColor),
      ),
      fillColor: Colors.white,
      prefixIconColor: Colors.grey,
      suffixIconColor: Colors.grey,
      contentPadding: EdgeInsets.all(15.0),
    ),
  );
}

import 'package:flutter/material.dart';
import 'package:food_app/utils/appColor.dart';

class AppTheme {
  static ThemeData ligtTheme = ThemeData(
    useMaterial3: true,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColor.white,
      surfaceTintColor: AppColor.white,
      shadowColor: AppColor.white,
      elevation: 0,
    ),
  );
}

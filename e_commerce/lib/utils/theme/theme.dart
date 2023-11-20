import 'package:e_commerce/utils/theme/customTheme/appBarTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/bottomSheetTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/checkBoxTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/chipTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/elevationButtonTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/outlinedButtonTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/textFormFieldTheme.dart';
import 'package:e_commerce/utils/theme/customTheme/textTheme.dart';
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "popins",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextThemeData.lightTextTheme,
    appBarTheme: AppBarThemeCustom.lightThemData,
    checkboxTheme: CustomCheckBoxTheme.lightCheckBoxThemeData,
    bottomSheetTheme: CustomBottomSheetThemeData.lightBottomSheetThemeData,
    chipTheme: CustomeChipTheme.lightChipTheme,
    inputDecorationTheme: CustomeTextFormFieldTheme.lightTextFormFeildTheme,
    elevatedButtonTheme:
        CustomeElevationButtonThemeData.lightElevationButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.lightOutlinedButtonTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "popins",
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: TextThemeData.darkTextTheme,
    appBarTheme: AppBarThemeCustom.darkThemData,
    checkboxTheme: CustomCheckBoxTheme.darkCheckBoxThemeData,
    bottomSheetTheme: CustomBottomSheetThemeData.darkBottomSheetThemeData,
    chipTheme: CustomeChipTheme.darkChipTheme,
    inputDecorationTheme: CustomeTextFormFieldTheme.darkTextFormFeildTheme,
    elevatedButtonTheme:
        CustomeElevationButtonThemeData.darkElevationButtonTheme,
    outlinedButtonTheme: CustomOutlinedButtonTheme.darkOutlinedButtonTheme,
  );
}

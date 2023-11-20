import 'package:flutter/material.dart';

class CustomCheckBoxTheme {
  CustomCheckBoxTheme._();

  static CheckboxThemeData lightCheckBoxThemeData = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white; // Return black color if the button is selected
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue; // Return black color if the button is selected
      } else {
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );

  static CheckboxThemeData darkCheckBoxThemeData = CheckboxThemeData(
    checkColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.white; // Return black color if the button is selected
      } else {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue; // Return black color if the button is selected
      } else {
        return Colors.transparent;
      }
    }),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
}

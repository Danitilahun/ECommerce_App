import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

class HelperFunction {
  static Color? getColor(String value) {
    switch (value.toLowerCase()) {
      case "red":
        return Colors.red;
      case "grey":
        return Colors.grey;
      case "green":
        return Colors.green;
      case "blue":
        return Colors.blue;
      case "yellow":
        return Colors.yellow;
      case "orange":
        return Colors.orange;
      case "purple":
        return Colors.purple;
      case "pink":
        return Colors.pink;
      case "white":
        return Colors.white;
      case "black":
        return Colors.black;
      case "amber":
        return Colors.amber;
      case "cyan":
        return Colors.cyan;
      case "teal":
        return Colors.teal;
      case "brown":
        return Colors.brown;
      case "indigo":
        return Colors.indigo;
      case "lime":
        return Colors.lime;
      default:
        return null; // Return null if color not found
    }
  }

  static void showSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(content: Text(message));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static void showAlert(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => screen),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static Size getScreenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static String getFormattedDate(DateTime date,
      {String format = 'dd-MMM-yyyy'}) {
    return DateFormat(format).format(date);
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    Set<T> setItems = list.toSet();

    List<T> uniqueList = setItems.toList();

    return uniqueList;
  }

  static List<Widget> wrapWidgets(List<Widget> widgetsToWrap, int rowSize) {
    List<Widget> wrappedWidgets = [];
    for (int i = 0; i < widgetsToWrap.length; i += rowSize) {
      List<Widget> rowWidgets = widgetsToWrap.sublist(
          i,
          i + rowSize > widgetsToWrap.length
              ? widgetsToWrap.length
              : i + rowSize);

      wrappedWidgets.add(
        Row(
          children: rowWidgets,
        ),
      );
    }
    return wrappedWidgets;
  }
}

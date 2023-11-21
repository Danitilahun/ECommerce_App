import 'package:intl/intl.dart';

class Formatter {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static String formatCurrency(double amount) {
    final currencyFormatter =
        NumberFormat.currency(locale: 'en_US', symbol: '\$');
    return currencyFormatter.format(amount);
  }

  static String formatPhoneNumber(String phoneNumber) {
    if (phoneNumber.length == 10) {
      final formattedNumber =
          '(${phoneNumber.substring(0, 3)}) ${phoneNumber.substring(3, 6)} ${phoneNumber.substring(6)}';
      return formattedNumber;
    } else if (phoneNumber.length == 11) {
      final formattedNumber =
          '(${phoneNumber.substring(0, 4)}) ${phoneNumber.substring(4, 7)} ${phoneNumber.substring(7)}';
      return formattedNumber;
    }
    return phoneNumber;
  }

  static String internationalFormatPhoneNumber(String phoneNumber) {
    var digitOnly = phoneNumber.replaceAll(RegExp(r'\D'), '');

    String countryCode = digitOnly.substring(0, 2);
    digitOnly = digitOnly.substring(2);

    final formattedNumber = StringBuffer();
    formattedNumber.write('(${countryCode}) ');

    int i = 0;

    while (i < digitOnly.length) {
      int groupLength = 2;
      if (i == 0 && digitOnly.length == 10) {
        groupLength = 3;
      }

      int end = i + groupLength;
      formattedNumber.write(digitOnly.substring(i, end));

      if (end < digitOnly.length) {
        formattedNumber.write(' ');
      }
      i = end;
    }
  }
}

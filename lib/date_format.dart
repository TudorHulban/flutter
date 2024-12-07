import 'package:intl/intl.dart';

class DateFormatter {
  static String formatDate(DateTime dateTime) {
    return DateFormat('yyyy-MMM-dd').format(dateTime);
  }
}
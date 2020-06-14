import 'package:injectable/injectable.dart';
import 'package:intl/intl.dart';

@lazySingleton
class DateFormatter {
  String monthYearRange(DateTime start, DateTime end) {
    if (start == null && end == null) {
      return 'Unknown';
    } else {
      final startDate = (start != null) ? DateFormat.yMMM().format(start) : 'Unknown';
      final endDate = (end != null) ? DateFormat.yMMM().format(end) : 'Present';
      return '$startDate - $endDate';
    }
  }

  String monthYear(DateTime date) {
    return (date != null) ? DateFormat.yMMM().format(date) : 'Unknown';
  }
}

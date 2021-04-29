import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/domain/core/formatter/date_formatter.dart';

void main() {
  late DateFormatter formatter;

  setUp(() {
    formatter = DateFormatter();
  });

  group('test month year date range', () {
    test('formats with both dates', () async {
      final firstDate = DateTime.parse('2007-09-30');
      final secondDate = DateTime.parse('2010-05-29');

      final actual = formatter.monthYearRange(firstDate, secondDate);

      expect(actual, equals('Sep 2007 - May 2010'));
    });

    test('formats with only starting date', () async {
      final firstDate = DateTime.parse('2007-09-30');

      final actual = formatter.monthYearRange(firstDate, null);

      expect(actual, equals('Sep 2007 - Present'));
    });

    test('formats with only end date', () async {
      final secondDate = DateTime.parse('2007-09-30');

      final actual = formatter.monthYearRange(null, secondDate);

      expect(actual, equals('Unknown - Sep 2007'));
    });

    test('formats with neither date', () async {
      final actual = formatter.monthYearRange(null, null);

      expect(actual, equals('Unknown'));
    });
  });

  group('test month year date', () {
    test('formats when present', () async {
      final date = DateTime.parse('2007-09-30');

      final actual = formatter.monthYear(date);

      expect(actual, equals('Sep 2007'));
    });

    test('formats when missing', () async {
      final actual = formatter.monthYear(null);

      expect(actual, equals('Unknown'));
    });
  });
}

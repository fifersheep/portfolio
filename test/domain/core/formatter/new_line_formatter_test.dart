import 'package:flutter_test/flutter_test.dart';
import 'package:portfolio/domain/core/formatter/new_line_formatter.dart';

void main() {
  NewLineFormatter formatter;

  setUp(() {
    formatter = NewLineFormatter();
  });

  test('test new line formatting', () async {
    final input = 'Some text\\nwith new\\nlines';

    final actual = formatter.format(input);

    expect(actual, equals('Some text\nwith new\nlines'));
  });
}

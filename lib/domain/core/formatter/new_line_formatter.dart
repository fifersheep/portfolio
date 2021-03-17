import 'package:injectable/injectable.dart';

@lazySingleton
class NewLineFormatter {
  String format(String input) => input.replaceAll('\\n', '\n');
}

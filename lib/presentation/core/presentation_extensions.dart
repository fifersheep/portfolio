import 'package:flutter/material.dart';

extension ColorString on String {
  Color toColor() => Color(int.parse(replaceAll('#', '0xff')));
}

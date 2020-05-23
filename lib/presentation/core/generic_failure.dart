import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';

class GenericFailure extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(Strings.of(context).genericError),
      ),
    );
  }
}

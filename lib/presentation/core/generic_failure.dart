import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';

class GenericFailure extends StatelessWidget {
  const GenericFailure({this.message});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Text(message ?? Strings.of(context).genericError),
      ),
    );
  }
}

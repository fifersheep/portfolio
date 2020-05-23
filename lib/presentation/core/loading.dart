import 'package:flutter/material.dart';
import 'package:portfolio/presentation/constants/strings.dart';

class LoadingIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          children: [
            const CircularProgressIndicator(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(Strings.of(context).loading),
            ),
          ],
        ),
      );
}

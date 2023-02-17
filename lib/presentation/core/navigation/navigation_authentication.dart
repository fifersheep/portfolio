import 'package:flutter/widgets.dart';
import 'package:portfolio/presentation/core/actions/secondary_call_to_action.dart';

class NavigationAuthentication extends StatelessWidget {
  const NavigationAuthentication({
    required this.email,
    required this.buttonLabel,
    required this.buttonOnPressed,
  });

  final String email;
  final String buttonLabel;
  final void Function() buttonOnPressed;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(email),
            const SizedBox(height: 8),
            SecondaryCallToAction(
              label: buttonLabel,
              route: 'dunno what this does...',
              onPressed: buttonOnPressed,
            ),
          ],
        ),
      );
}

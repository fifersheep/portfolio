import 'package:flutter/widgets.dart';
import 'package:portfolio/presentation/core/actions/secondary_call_to_action.dart';

class NavigationAuthentication extends StatelessWidget {
  const NavigationAuthentication({
    required this.email,
    required this.isAuthenticated,
    required this.signIn,
    required this.signOut,
  });

  final String? email;
  final bool isAuthenticated;
  final void Function() signIn;
  final void Function() signOut;

  @override
  Widget build(BuildContext context) => Container(
        margin: const EdgeInsets.only(bottom: 8),
        alignment: Alignment.center,
        child: Column(
          children: [
            Text(email ?? 'Not Logged In'),
            const SizedBox(height: 8),
            SecondaryCallToAction(
              label: isAuthenticated ? 'Sign Out' : 'Sign In',
              route: 'dunno what this does...',
              onPressed: isAuthenticated ? signOut : signIn,
            ),
          ],
        ),
      );
}

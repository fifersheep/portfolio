import 'package:flutter/material.dart';
import 'package:portfolio/data/network/auth/auth_repository.dart';
import 'package:portfolio/injection.dart';
import 'package:portfolio/presentation/core/actions/primary_call_to_action.dart';
import 'package:portfolio/presentation/core/page_scaffold.dart';
import 'package:portfolio/presentation/core/text/headline_text.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final AuthRepository _authRepository = getIt<AuthRepository>();

  @override
  Widget build(BuildContext context) => PageScaffold(
        title: 'Login',
        body: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24),
          child: SizedBox(
            width: 300,
            child: Column(
              children: [
                const Headline('Login'),
                const TextField(
                  decoration: InputDecoration(
                    label: Text('Email'),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                ),
                const TextField(
                  decoration: InputDecoration(
                    label: Text('Password'),
                    floatingLabelBehavior: FloatingLabelBehavior.auto,
                  ),
                ),
                const SizedBox(height: 32),
                PrimaryCallToAction(
                  label: 'Login',
                  route: 'dunno what this does...',
                  onPressed: () {
                    _authRepository.signIn('', '');
                  },
                )
              ],
            ),
          ),
        ),
      );
}

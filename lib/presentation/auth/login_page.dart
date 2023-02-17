import 'package:flutter/material.dart';
import 'package:portfolio/domain/auth/login_cubit.dart';
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
  final LoginCubit _loginCubit = getIt<LoginCubit>();

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
                TextField(
                  decoration: const InputDecoration(
                    label: Text('Email'),
                  ),
                  onChanged: _loginCubit.emailChanged,
                ),
                TextField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    label: Text('Password'),
                  ),
                  onChanged: _loginCubit.passwordChanged,
                ),
                const SizedBox(height: 32),
                PrimaryCallToAction(
                  label: 'Login',
                  route: 'dunno what this does...',
                  onPressed: _loginCubit.signIn,
                )
              ],
            ),
          ),
        ),
      );
}

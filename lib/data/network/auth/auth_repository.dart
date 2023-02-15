import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/supabase_api.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_repository.freezed.dart';

part 'auth_state.dart';

@lazySingleton
class AuthRepository extends Cubit<AuthState> {
  AuthRepository(this._api) : super(const AuthState.signedOut()) {
    _api.onAuthStateChange.listen((data) {
      log(data.toString());
      final AuthChangeEvent event = data.event;
      emit(event == AuthChangeEvent.signedIn ? const SignedIn() : const SignedOut());
    });
  }

  final Api _api;

  String? get email => _api.email;

  Future<bool> signIn() async => _api.signInWithGoogle();

  Future<void> signOut() async => _api.signOut();
}

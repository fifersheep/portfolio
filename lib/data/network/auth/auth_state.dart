part of 'auth_repository.dart';

@freezed
class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.signedIn(String email) = SignedIn;
  const factory AuthState.signedOut() = SignedOut;
}

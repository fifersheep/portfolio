part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const LoginState._();

  const factory LoginState.credentials(String email, String password) = LoginCredentials;
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:portfolio/data/network/auth/auth_repository.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

@lazySingleton
class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepository) : super(const LoginState.credentials('', ''));

  final AuthRepository _authRepository;

  void emailChanged(String email) => emit(state.copyWith(email: email));

  void passwordChanged(String password) => emit(state.copyWith(password: password));

  void signIn() => _authRepository.signIn(state.email, state.password);
}

import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_request.dart';
import 'package:suranect/features/auth/data/remote/models/login/login_response.dart';
import 'package:suranect/features/auth/domain/entities/password.dart';
import 'package:suranect/features/auth/domain/entities/username.dart';
import 'package:suranect/features/auth/domain/use_cases/login/login_use_case.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginState> {
  final LoginUseCase loginUseCase;

  LoginCubit({
    required this.loginUseCase,
  }) : super(const LoginState.initial());

  void usernameChanged(String value) {
    final username = Username.dirty(value);
    emit(
      state.copyWith(
          name: username, isValid: Formz.validate([username, state.password])),
    );
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(
      state.copyWith(
          password: password, isValid: Formz.validate([state.name, password])),
    );
  }

  void showPassword() {
    emit(state.copyWith(
      showPassword: !state.showPassword,
    ));
  }

  void loginWithCredentials() async {
    if (state.name.error == null && state.password.error == null) {
      emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));

      final response = await loginUseCase.call(LoginRequest(
        username: state.name.value,
        password: state.password.value,
      ));
      response.fold(
        (l) {
          final error =
             l.asOrNull<ApiFailure>()?.error ?? "Something went wrong";

          return emit(state.copyWith(
            exceptionError: error,
            formStatus: FormzSubmissionStatus.failure,
          ));
        },
        (r) => emit(
          state.copyWith(
            response: r,
            exceptionError: "",
            formStatus: FormzSubmissionStatus.success,
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          exceptionError: "",
          formStatus: FormzSubmissionStatus.failure,
        ),
      );
    }
  }

  void refresh() {
    emit(const LoginState.initial());
  }
}

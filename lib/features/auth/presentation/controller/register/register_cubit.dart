import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/app/network/base/api_result.dart';
import 'package:suranect/app/network/base/safe_call_extension.dart';
import 'package:suranect/core/error/failure.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register/register_response.dart';
import 'package:suranect/features/auth/domain/entities/email.dart';
import 'package:suranect/features/auth/domain/entities/password.dart';
import 'package:formz/formz.dart';
import 'package:suranect/features/auth/domain/entities/re_password.dart';
import 'package:suranect/features/auth/domain/entities/username.dart';
import 'package:suranect/features/auth/domain/use_cases/register/register_use_case.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterUseCase registerUseCase;

  RegisterCubit({required this.registerUseCase})
      : super(const RegisterState.initial());

  void emailChanged(String value) {
    final email = Email.dirty(value);
    emit(state.copyWith(
      email: email,
      isValid:
          Formz.validate([state.name, email, state.password, state.rePassword]),
    ));
  }

  void passwordChanged(String value) {
    final password = Password.dirty(value);
    emit(state.copyWith(
      password: password,
      isValid:
          Formz.validate([state.name, state.email, password, state.rePassword]),
    ));
  }

  void rePasswordChanged(String value) {
    final rePassword = RePassword.dirty(value);
    emit(state.copyWith(
      rePassword: rePassword,
      isValid:
          Formz.validate([state.name, state.email, state.password, rePassword]),
    ));
  }

  void nameChanged(String value) {
    final name = Username.dirty(value);
    emit(state.copyWith(
      name: name,
      isValid:
          Formz.validate([name, state.email, state.password, state.rePassword]),
    ));
  }

  void showPassword() {
    emit(state.copyWith(
      showPassword: !state.showPassword,
    ));
  }

  void signUpWithCredentials() async {
    if (state.name.error == null &&
        state.email.error == null &&
        state.password.error == null &&
        state.rePassword.error == null) {
      emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
      if(!state.isPasswordsMatch){
        return emit(state.copyWith(
          exceptionError: "RePassword tidak sama",
          formStatus: FormzSubmissionStatus.failure,
        ));
      }

      final response = await registerUseCase.call(RegisterRequest(
        username: state.name.value,
        email: state.email.value,
        password: state.password.value,
      ));

      response.fold(
        (l) {
          final error =l.asOrNull<ApiFailure>()?.error ??
              "Something went wrong";

          return emit(state.copyWith(
            exceptionError: error,
            formStatus: FormzSubmissionStatus.failure,
          ));
        },
        (r) => emit(
          state.copyWith(
            response: r,
            formStatus: FormzSubmissionStatus.success,
          ),
        ),
      );
    } else {
      return emit(state.copyWith(
        exceptionError: "",
        formStatus: FormzSubmissionStatus.failure,
      ));
    }
  }

  void refresh() {
    emit(const RegisterState.initial());
  }
}

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/auth/data/remote/models/register_request.dart';
import 'package:suranect/features/auth/data/remote/models/register_response.dart';
import 'package:suranect/features/auth/domain/entities/email.dart';
import 'package:suranect/features/auth/domain/entities/password.dart';
import 'package:formz/formz.dart';
import 'package:suranect/features/auth/domain/entities/re_password.dart';
import 'package:suranect/features/auth/domain/entities/username.dart';
import 'package:suranect/features/auth/domain/use_cases/register_use_case.dart';

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

  void signUpWithCredentials() async {
    emit(state.copyWith(formStatus: FormzSubmissionStatus.inProgress));
    final response = await registerUseCase.call(RegisterRequest(
        username: state.name.value,
        email: state.email.value,
        password: state.password.value));
    response.fold(
      (l) => emit(state.copyWith(
        exceptionError: "error $l",
        formStatus: FormzSubmissionStatus.failure,
      )),
      (r) => emit(
        state.copyWith(
          response: r,
          formStatus: FormzSubmissionStatus.success
        ),
      ),
    );
  }

  void refresh() {
    emit(const RegisterState.initial());
  }
}

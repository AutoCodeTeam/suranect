part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const RegisterState._();

  const factory RegisterState.initial({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    @Default(RePassword.pure()) RePassword rePassword,
    @Default(false) bool isValid,
    @Default(true) bool showPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default(Username.pure()) Username name,
    @Default(RegisterResponse(message: "", status: "")) RegisterResponse response,
    @Default('') String exceptionError,
  }) = _Initial;

  bool get isPasswordsMatch => password.value == rePassword.value;
  bool get displaySignUpButton => formStatus.isFailure && isPasswordsMatch;
}

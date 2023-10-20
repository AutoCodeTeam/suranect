part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({
    @Default(Username.pure()) Username name,
    @Default(Password.pure()) Password password,
    @Default(false) bool isValid,
    @Default(true) bool showPassword,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus formStatus,
    @Default(LoginResponse(message: "", status: "", token: "")) LoginResponse response,
    @Default('') String exceptionError,
  }) = _Initial;
}

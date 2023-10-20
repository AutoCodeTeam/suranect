part of 'verify_otp_cubit.dart';

enum VerifyOtpStatus {
  initial,
  inProgess,
  success,
  failure,
}

@freezed
class VerifyOtpState with _$VerifyOtpState {
  const factory VerifyOtpState.initial({
    @Default(0) int otp,
    @Default(Duration(seconds: 0)) Duration sendAgain,
    @Default(VerifyOtpStatus.initial) VerifyOtpStatus getOtpStatus,
    @Default(VerifyOtpResponse(message: "", status: ""))
    VerifyOtpResponse getOtpResponse,
    @Default(VerifyOtpStatus.initial) VerifyOtpStatus verifyOtpStatus,
    @Default(VerifyOtpResponse(message: "", status: ""))
    VerifyOtpResponse response,
    @Default('') String error,
  }) = _Initial;
}

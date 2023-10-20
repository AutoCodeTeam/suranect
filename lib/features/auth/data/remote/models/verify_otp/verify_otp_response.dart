import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response.g.dart';

part 'verify_otp_response.freezed.dart';

@freezed
class VerifyOtpResponse with _$VerifyOtpResponse {
  const factory VerifyOtpResponse({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
  }) = _VerifyOtpResponse;

  factory VerifyOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpResponseFromJson(json);
}

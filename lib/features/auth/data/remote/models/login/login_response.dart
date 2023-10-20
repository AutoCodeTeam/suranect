import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response.freezed.dart';

part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse{
  const factory LoginResponse({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'Token') required String token,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String,dynamic> json) => _$LoginResponseFromJson(json);
}
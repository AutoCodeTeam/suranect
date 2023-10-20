import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'token_auth.freezed.dart';

part 'token_auth.g.dart';

@freezed
@HiveType(typeId: 1)
class TokenAuth with _$TokenAuth {
  const factory TokenAuth({
    @HiveField(0) required String token,
  }) = _TokenAuth;

  factory TokenAuth.fromJson(Map<String, dynamic> json) =>
      _$TokenAuthFromJson(json);
}

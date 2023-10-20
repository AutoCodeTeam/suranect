import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/auth/domain/entities/user_entity.dart';

part 'profile_response.freezed.dart';

part 'profile_response.g.dart';

@freezed
class ProfileResponse with _$ProfileResponse {

  const factory ProfileResponse({
    @JsonKey(name: "Data") required UserEntity userEntity,
    @JsonKey(name: "Message") required String message,
    @JsonKey(name: "Status") required String status,
}) = _ProfileResponse;

  factory ProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileResponseFromJson(json);
}

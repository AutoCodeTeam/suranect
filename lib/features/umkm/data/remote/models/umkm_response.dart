import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/umkm/domain/entities/umkm.dart';

part 'umkm_response.g.dart';

part 'umkm_response.freezed.dart';

@freezed
class UmkmResponse with _$UmkmResponse {
const factory UmkmResponse({
  @JsonKey(name: 'Message') required String message,
  @JsonKey(name: 'Status') required String status,
  @JsonKey(name: 'Data') required List<Umkm> data,
}) = _UmkmResponse;

  factory UmkmResponse.fromJson(Map<String, dynamic> json) =>
      _$UmkmResponseFromJson(json);
}
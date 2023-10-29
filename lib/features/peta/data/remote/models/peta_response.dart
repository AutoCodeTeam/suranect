import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/peta/domain/entities/peta.dart';

part 'peta_response.g.dart';

part 'peta_response.freezed.dart';

@freezed
class PetaResponse with _$PetaResponse {

  const factory PetaResponse({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'Data') required List<Peta> data,
  }) = _PetaResponse;

  factory PetaResponse.fromJson(Map<String, dynamic> json) =>
      _$PetaResponseFromJson(json);
}

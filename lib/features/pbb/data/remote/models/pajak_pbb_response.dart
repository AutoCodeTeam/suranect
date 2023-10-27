import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/pbb/domain/entities/pajak_pbb.dart';

part 'pajak_pbb_response.g.dart';

part 'pajak_pbb_response.freezed.dart';

@freezed
class PajakPbbResponse with _$PajakPbbResponse {
  const factory PajakPbbResponse({
    @JsonKey(name: "Data") required List<PajakPBB> data,
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
  }) = _PajakPbbResponse;

  factory PajakPbbResponse.fromJson(Map<String, dynamic> json) =>
      _$PajakPbbResponseFromJson(json);
}

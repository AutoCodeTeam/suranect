import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/berita/domain/entities/berita.dart';

part 'berita_response.g.dart';

part 'berita_response.freezed.dart';

@freezed
class BeritaResponse with _$BeritaResponse {
  const factory BeritaResponse({
    @JsonKey(name: 'Message') required String message,
    @JsonKey(name: 'Status') required String status,
    @JsonKey(name: 'Data') required List<Berita> data,
}) = _BeritResponse;

  factory BeritaResponse.fromJson(Map<String, dynamic> json) =>
      _$BeritaResponseFromJson(json);
}

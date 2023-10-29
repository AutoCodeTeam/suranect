import 'package:freezed_annotation/freezed_annotation.dart';

part 'berita.freezed.dart';

part 'berita.g.dart';

@freezed
class Berita with _$Berita {
  const factory Berita({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "Title") required String title,
    @JsonKey(name: "Text") required String text,
    @JsonKey(name: "Image") required String image,
    @JsonKey(name: "Category") required String category,
    @JsonKey(name: "CreatedAt") String? createdAt,
    @JsonKey(name: "UpdatedAt") String? updatedAt,
  }) = _Berita;

  factory Berita.fromJson(Map<String, dynamic> json) => _$BeritaFromJson(json);
}

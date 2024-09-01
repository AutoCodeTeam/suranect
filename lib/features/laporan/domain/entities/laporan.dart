import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/features/auth/domain/entities/user_entity.dart';

part 'laporan.freezed.dart';

part 'laporan.g.dart';

@freezed
class Laporan with _$Laporan {
  const factory Laporan({
    @JsonKey(name: "ID") required int id,
    @JsonKey(name: "CreatedAt") required DateTime createdAt,
    @JsonKey(name: "UpdatedAt") required DateTime updatedAt,
    @JsonKey(name: "DeletedAt") required dynamic deletedAt,
    @JsonKey(name: "UserID") required int userId,
    @JsonKey(name: "User") required UserEntity user,
    @JsonKey(name: "Lokasi") required String lokasi,
    @JsonKey(name: "LokasiSpesifik") required String lokasiSpesifik,
    @JsonKey(name: "Permasalahan") required String permasalahan,
    @JsonKey(name: "Kategori") required String kategori,
    @JsonKey(name: "Photo") required String photo,
    @JsonKey(name: "Status") required String status,
  }) = _Laporan;

  factory Laporan.fromJson(Map<String, dynamic> json) =>
      _$LaporanFromJson(json);
}

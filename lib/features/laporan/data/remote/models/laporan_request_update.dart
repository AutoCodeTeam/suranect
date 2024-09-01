import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporan_request_update.freezed.dart';

@freezed
class LaporanUpdateRequest with _$LaporanUpdateRequest {
  const factory LaporanUpdateRequest({
    required int id,
    @Default(null) String? lokasi,
    @Default(null) String? lokasiSpesifik,
    @Default(null) String? permasalahan,
    @Default(null) String? kategori,
    @Default(null) MultipartFile? photo,
  }) = _LaporanUpdateRequest;
}

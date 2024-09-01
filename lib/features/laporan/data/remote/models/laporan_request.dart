import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporan_request.freezed.dart';

@freezed
class LaporanRequest with _$LaporanRequest {
  const factory LaporanRequest({
    required String permasalahan,
    required String lokasi,
    String? lokasiSpesifik,
    required String kategori,
    String? status,
    required MultipartFile photo,
  }) = _LaporanRequest;
}

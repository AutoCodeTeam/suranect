import 'package:freezed_annotation/freezed_annotation.dart';

part 'laporan_detail_request.freezed.dart';

@freezed
class LaporanDetailRequest with _$LaporanDetailRequest {

  const factory LaporanDetailRequest({
    required int id,
}) = _LaporanDetailRequest;
}
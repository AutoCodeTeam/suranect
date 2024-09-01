part of 'laporan_bloc.dart';

@freezed
class LaporanEvent with _$LaporanEvent {
  const factory LaporanEvent.started() = _Started;

  const factory LaporanEvent.showDetail({
    required LaporanDetailRequest request,
  }) = _ShowDetail;

  const factory LaporanEvent.delete({
    required LaporanDetailRequest request,
  }) = _Delete;
}

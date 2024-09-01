part of 'laporan_bloc.dart';

@freezed
class LaporanState with _$LaporanState {
  const factory LaporanState.initial() = _Initial;

  const factory LaporanState.loading() = _Loading;

  const factory LaporanState.loaded({
    @Default(<Laporan>[]) List<Laporan> laporans,
  }) = _Loaded;

  const factory LaporanState.failure({@Default("") String error}) = _Failure;

  const factory LaporanState.detail({
    required Laporan laporan,
  }) = _Detail;
}

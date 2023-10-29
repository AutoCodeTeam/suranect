part of 'berita_bloc.dart';

@freezed
class BeritaState with _$BeritaState {
  const factory BeritaState.initial() = _Initial;

  const factory BeritaState.loading() = _Loading;

  const factory BeritaState.loaded({
    @Default(<Berita>[]) List<Berita> beritas,
    @Default(<Berita>[]) List<Berita> latestNews,
    @Default("Semua") String category,
  }) = _Loaded;

  const factory BeritaState.failure({
    required String error,
  }) = _Failure;
}

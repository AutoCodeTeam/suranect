part of 'umkm_bloc.dart';

@freezed
class UmkmState with _$UmkmState {
  const factory UmkmState.initial() = _Initial;

  const factory UmkmState.loading() = _Loading;

  const factory UmkmState.loaded({
    @Default(<Umkm>[]) List<Umkm> umkm,
  }) = _Loaded;

  const factory UmkmState.failure({
    @Default("") String error
}) = _Error;
}

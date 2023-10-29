part of 'wisata_bloc.dart';

@freezed
class WisataState with _$WisataState {
  const factory WisataState.initial() = _Initial;

  const factory WisataState.loading() = _Loading;

  const factory WisataState.loaded({
    @Default(<Wisata>[]) List<Wisata> wisatas,
  }) = _Loaded;

  const factory WisataState.failure({
    @Default("") String error,
}) = _Failure;
}

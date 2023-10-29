part of 'peta_bloc.dart';

@freezed
class PetaState with _$PetaState {
  const factory PetaState.initial() = _Initial;

  const factory PetaState.loading() = _Loading;

  const factory PetaState.loaded({
    @Default(<Peta>[]) List<Peta> petas,
    @Default(<Event>[]) List<Event> events,
    @Default("Semua") String category,
  }) = _Loaded;

  const factory PetaState.failure({
    @Default("") String error,
  }) = _Failure;
}

part of 'peta_bloc.dart';

@freezed
class PetaEvent with _$PetaEvent {
  const factory PetaEvent.started() = _Started;
  const factory PetaEvent.changeCategory(String category) = _ChangeCategory;
}

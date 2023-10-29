part of 'berita_bloc.dart';

@freezed
class BeritaEvent with _$BeritaEvent {
  const factory BeritaEvent.started() = _Started;
  const factory BeritaEvent.changeCategory(String category) = _ChangeCategory;
}

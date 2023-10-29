part of 'event_bloc.dart';

@freezed
class EventState with _$EventState {
  const factory EventState.initial() = _Initial;

  const factory EventState.loading() = _Loading;

  const factory EventState.loaded({
    @Default(<Event>[]) List<Event> events,
  }) = _Loaded;

  const factory EventState.failure({
    @Default("") String error,
  }) = _Failure;
}

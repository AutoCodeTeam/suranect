part of 'current_location_bloc.dart';

@freezed
class CurrentLocationEvent with _$CurrentLocationEvent {
  const factory CurrentLocationEvent.started() = _Started;

  const factory CurrentLocationEvent.trackLocation() = _TrackLocation;

  const factory CurrentLocationEvent.directToMyLocation(Position position) =
      _DirectToMyLocation;
}

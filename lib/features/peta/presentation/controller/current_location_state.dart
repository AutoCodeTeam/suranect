part of 'current_location_bloc.dart';

@freezed
class CurrentLocationState with _$CurrentLocationState {
  const factory CurrentLocationState.initial() = _Initial;
  const factory CurrentLocationState.currentLocation(LatLng latLng) = _CurrentLocation;
}

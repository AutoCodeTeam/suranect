import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

part 'current_location_event.dart';

part 'current_location_state.dart';

part 'current_location_bloc.freezed.dart';

class CurrentLocationBloc
    extends Bloc<CurrentLocationEvent, CurrentLocationState> {
  MapController get mapController => MapController();

  CurrentLocationBloc() : super(const CurrentLocationState.initial()) {
    on<CurrentLocationEvent>((event, emit) async {
      await event.map(
        started: (value) async {
          LocationPermission permission = await Geolocator.checkPermission();
          if (permission == LocationPermission.deniedForever) {
            return null;
          } else if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
            if (permission == LocationPermission.denied ||
                permission == LocationPermission.deniedForever) {
              return null;
            }
          }

          add(const CurrentLocationEvent.trackLocation());
        },
        trackLocation: (value) async {
          final locationStream = Geolocator.getPositionStream(
            locationSettings: const LocationSettings(
              accuracy: LocationAccuracy.high,
            ),
          );

          await for (var location in locationStream) {
            emit(
              CurrentLocationState.currentLocation(
                LatLng(location.latitude, location.longitude),
              ),
            );
          }
        },
        directToMyLocation: (value) {

        },
      );
    });
  }
}

part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.appStarted() = _AppStarted;
  const factory ProfileEvent.loggedIn() = _LoggedIn;
  const factory ProfileEvent.loggedOut() = _LoggedOut;
}

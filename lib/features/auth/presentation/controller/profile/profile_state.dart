part of 'profile_bloc.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.authenticated(UserEntity userEntity) = _Authenticated;
  const factory ProfileState.unauthenticated() = _Unauthenticated;
}

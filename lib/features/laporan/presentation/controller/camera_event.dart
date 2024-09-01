part of 'camera_bloc.dart';

@freezed
class CameraEvent with _$CameraEvent {
  const factory CameraEvent.started() = _Started;

  const factory CameraEvent.stopped() = _Stopped;

  const factory CameraEvent.captured({
    required int amountPicture,
  }) = _Captured;

  const factory CameraEvent.changeFlash() = _ChangeFlash;

  const factory CameraEvent.pickImage() = _PickImage;
}

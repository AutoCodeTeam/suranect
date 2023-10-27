part of '../../../add_laporan/presentation/controller/camera_bloc.dart';

@freezed
class CameraState with _$CameraState {
  const factory CameraState.initial() = _Initial;

  const factory CameraState.ready({
    @Default(FlashMode.off) FlashMode flashMode,
}) = _Ready;

  const factory CameraState.failure({
    @Default("") String error,
  }) = _Failure;

  const factory CameraState.inProgress({
    @Default(0.0) double progressValue,
}) = _inProgress;

  const factory CameraState.success({
    XFile? image,
    List<Uint8List>? pathMoreThanOnce,
  }) = _Success;

  const factory CameraState.captureFailure({
    @Default("") String error,
  }) = _CaptureFailure;
}

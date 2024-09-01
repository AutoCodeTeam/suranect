import 'dart:async';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:camera/camera.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:suranect/core/utils/camera_utils.dart';
import 'package:image_picker/image_picker.dart';

part 'camera_event.dart';

part 'camera_state.dart';

part 'camera_bloc.freezed.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState> {
  final CameraUtils cameraUtils;
  final ResolutionPreset resolutionPreset;
  final CameraLensDirection cameraLensDirection;

  CameraController? _controller;

  CameraController getController() => _controller!;

  bool isInitialized() => _controller!.value.isInitialized;

  List<Uint8List> collectedPhoto = [];

  StreamController<Uint8List> controllerImage =
      StreamController<Uint8List>.broadcast();

  int counterSnapshot = 0;
  late int amountCollectWillBe;
  late double progressValue;

  CameraBloc({
    required this.cameraUtils,
    this.resolutionPreset = ResolutionPreset.medium,
    this.cameraLensDirection = CameraLensDirection.back,
  }) : super(const CameraState.initial()) {
    on<CameraEvent>((event, emit) async {
      await event.map(started: (value) async {
        try {
          _controller = await cameraUtils.getCameraController(
              resolutionPreset, cameraLensDirection);
          await _controller?.initialize();
          await _controller?.lockCaptureOrientation();
          if (cameraLensDirection == CameraLensDirection.back) {
            await _controller?.setFlashMode(FlashMode.off);
          }
          emit(const CameraState.ready());
        } on CameraException catch (error) {
          _controller?.dispose();
          emit(CameraState.failure(error: error.description!));
        } catch (error) {
          emit(CameraState.failure(error: error.toString()));
        }
      }, stopped: (value) async {
        _controller?.dispose();
        emit(const CameraState.initial());
      }, captured: (value) async {
        await state.whenOrNull(
          ready: (flashMode) async {
            emit(const CameraState.inProgress());
            try {
              XFile resultPicture = await _controller!.takePicture();
              emit(CameraState.success(
                  pathMoreThanOnce: null, image: resultPicture));
            } on CameraException catch (error) {
              emit(CameraState.captureFailure(error: error.description!));
            }
          },
        );
      }, changeFlash: (value) {
        state.whenOrNull(
          ready: (flashMode) {
            switch (flashMode) {
              case FlashMode.off:
                _controller?.setFlashMode(FlashMode.always);
                return emit(
                    const CameraState.ready(flashMode: FlashMode.always));
              case FlashMode.always:
                _controller?.setFlashMode(FlashMode.torch);
                return emit(
                    const CameraState.ready(flashMode: FlashMode.torch));
              case FlashMode.torch:
                _controller?.setFlashMode(FlashMode.off);
                return emit(const CameraState.ready(flashMode: FlashMode.off));
              default:
            }
          },
        );
      }, pickImage: (value) async {
        await _controller?.dispose();

        await state.whenOrNull(
          ready: (flashMode) async {
            emit(const CameraState.inProgress());
            XFile? resultPicture =
                await ImagePicker().pickImage(source: ImageSource.gallery);
            if (resultPicture == null) return add(const CameraEvent.started());
            emit(CameraState.success(
                pathMoreThanOnce: null, image: resultPicture));
          },
        );
      });
    });
  }

  @override
  Future<void> close() {
    _controller?.dispose();
    return super.close();
  }
}

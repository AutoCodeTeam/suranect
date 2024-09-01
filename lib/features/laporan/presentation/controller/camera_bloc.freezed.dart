// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res, CameraEvent>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res, $Val extends CameraEvent>
    implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'CameraEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CameraEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$StoppedImplCopyWith<$Res> {
  factory _$$StoppedImplCopyWith(
          _$StoppedImpl value, $Res Function(_$StoppedImpl) then) =
      __$$StoppedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StoppedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$StoppedImpl>
    implements _$$StoppedImplCopyWith<$Res> {
  __$$StoppedImplCopyWithImpl(
      _$StoppedImpl _value, $Res Function(_$StoppedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StoppedImpl implements _Stopped {
  const _$StoppedImpl();

  @override
  String toString() {
    return 'CameraEvent.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StoppedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class _Stopped implements CameraEvent {
  const factory _Stopped() = _$StoppedImpl;
}

/// @nodoc
abstract class _$$CapturedImplCopyWith<$Res> {
  factory _$$CapturedImplCopyWith(
          _$CapturedImpl value, $Res Function(_$CapturedImpl) then) =
      __$$CapturedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int amountPicture});
}

/// @nodoc
class __$$CapturedImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$CapturedImpl>
    implements _$$CapturedImplCopyWith<$Res> {
  __$$CapturedImplCopyWithImpl(
      _$CapturedImpl _value, $Res Function(_$CapturedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amountPicture = null,
  }) {
    return _then(_$CapturedImpl(
      amountPicture: null == amountPicture
          ? _value.amountPicture
          : amountPicture // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CapturedImpl implements _Captured {
  const _$CapturedImpl({required this.amountPicture});

  @override
  final int amountPicture;

  @override
  String toString() {
    return 'CameraEvent.captured(amountPicture: $amountPicture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CapturedImpl &&
            (identical(other.amountPicture, amountPicture) ||
                other.amountPicture == amountPicture));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amountPicture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CapturedImplCopyWith<_$CapturedImpl> get copyWith =>
      __$$CapturedImplCopyWithImpl<_$CapturedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) {
    return captured(amountPicture);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) {
    return captured?.call(amountPicture);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured(amountPicture);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) {
    return captured(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return captured?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (captured != null) {
      return captured(this);
    }
    return orElse();
  }
}

abstract class _Captured implements CameraEvent {
  const factory _Captured({required final int amountPicture}) = _$CapturedImpl;

  int get amountPicture;
  @JsonKey(ignore: true)
  _$$CapturedImplCopyWith<_$CapturedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeFlashImplCopyWith<$Res> {
  factory _$$ChangeFlashImplCopyWith(
          _$ChangeFlashImpl value, $Res Function(_$ChangeFlashImpl) then) =
      __$$ChangeFlashImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeFlashImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$ChangeFlashImpl>
    implements _$$ChangeFlashImplCopyWith<$Res> {
  __$$ChangeFlashImplCopyWithImpl(
      _$ChangeFlashImpl _value, $Res Function(_$ChangeFlashImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ChangeFlashImpl implements _ChangeFlash {
  const _$ChangeFlashImpl();

  @override
  String toString() {
    return 'CameraEvent.changeFlash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChangeFlashImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) {
    return changeFlash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) {
    return changeFlash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (changeFlash != null) {
      return changeFlash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) {
    return changeFlash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return changeFlash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (changeFlash != null) {
      return changeFlash(this);
    }
    return orElse();
  }
}

abstract class _ChangeFlash implements CameraEvent {
  const factory _ChangeFlash() = _$ChangeFlashImpl;
}

/// @nodoc
abstract class _$$PickImageImplCopyWith<$Res> {
  factory _$$PickImageImplCopyWith(
          _$PickImageImpl value, $Res Function(_$PickImageImpl) then) =
      __$$PickImageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickImageImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$PickImageImpl>
    implements _$$PickImageImplCopyWith<$Res> {
  __$$PickImageImplCopyWithImpl(
      _$PickImageImpl _value, $Res Function(_$PickImageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PickImageImpl implements _PickImage {
  const _$PickImageImpl();

  @override
  String toString() {
    return 'CameraEvent.pickImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PickImageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() stopped,
    required TResult Function(int amountPicture) captured,
    required TResult Function() changeFlash,
    required TResult Function() pickImage,
  }) {
    return pickImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? stopped,
    TResult? Function(int amountPicture)? captured,
    TResult? Function()? changeFlash,
    TResult? Function()? pickImage,
  }) {
    return pickImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? stopped,
    TResult Function(int amountPicture)? captured,
    TResult Function()? changeFlash,
    TResult Function()? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Stopped value) stopped,
    required TResult Function(_Captured value) captured,
    required TResult Function(_ChangeFlash value) changeFlash,
    required TResult Function(_PickImage value) pickImage,
  }) {
    return pickImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Stopped value)? stopped,
    TResult? Function(_Captured value)? captured,
    TResult? Function(_ChangeFlash value)? changeFlash,
    TResult? Function(_PickImage value)? pickImage,
  }) {
    return pickImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Stopped value)? stopped,
    TResult Function(_Captured value)? captured,
    TResult Function(_ChangeFlash value)? changeFlash,
    TResult Function(_PickImage value)? pickImage,
    required TResult orElse(),
  }) {
    if (pickImage != null) {
      return pickImage(this);
    }
    return orElse();
  }
}

abstract class _PickImage implements CameraEvent {
  const factory _PickImage() = _$PickImageImpl;
}

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'CameraState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CameraState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$ReadyImplCopyWith<$Res> {
  factory _$$ReadyImplCopyWith(
          _$ReadyImpl value, $Res Function(_$ReadyImpl) then) =
      __$$ReadyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({FlashMode flashMode});
}

/// @nodoc
class __$$ReadyImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$ReadyImpl>
    implements _$$ReadyImplCopyWith<$Res> {
  __$$ReadyImplCopyWithImpl(
      _$ReadyImpl _value, $Res Function(_$ReadyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flashMode = null,
  }) {
    return _then(_$ReadyImpl(
      flashMode: null == flashMode
          ? _value.flashMode
          : flashMode // ignore: cast_nullable_to_non_nullable
              as FlashMode,
    ));
  }
}

/// @nodoc

class _$ReadyImpl implements _Ready {
  const _$ReadyImpl({this.flashMode = FlashMode.off});

  @override
  @JsonKey()
  final FlashMode flashMode;

  @override
  String toString() {
    return 'CameraState.ready(flashMode: $flashMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReadyImpl &&
            (identical(other.flashMode, flashMode) ||
                other.flashMode == flashMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flashMode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      __$$ReadyImplCopyWithImpl<_$ReadyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return ready(flashMode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return ready?.call(flashMode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(flashMode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _Ready implements CameraState {
  const factory _Ready({final FlashMode flashMode}) = _$ReadyImpl;

  FlashMode get flashMode;
  @JsonKey(ignore: true)
  _$$ReadyImplCopyWith<_$ReadyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.error = ""});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CameraState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements CameraState {
  const factory _Failure({final String error}) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$inProgressImplCopyWith<$Res> {
  factory _$$inProgressImplCopyWith(
          _$inProgressImpl value, $Res Function(_$inProgressImpl) then) =
      __$$inProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double progressValue});
}

/// @nodoc
class __$$inProgressImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$inProgressImpl>
    implements _$$inProgressImplCopyWith<$Res> {
  __$$inProgressImplCopyWithImpl(
      _$inProgressImpl _value, $Res Function(_$inProgressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? progressValue = null,
  }) {
    return _then(_$inProgressImpl(
      progressValue: null == progressValue
          ? _value.progressValue
          : progressValue // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$inProgressImpl implements _inProgress {
  const _$inProgressImpl({this.progressValue = 0.0});

  @override
  @JsonKey()
  final double progressValue;

  @override
  String toString() {
    return 'CameraState.inProgress(progressValue: $progressValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$inProgressImpl &&
            (identical(other.progressValue, progressValue) ||
                other.progressValue == progressValue));
  }

  @override
  int get hashCode => Object.hash(runtimeType, progressValue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$inProgressImplCopyWith<_$inProgressImpl> get copyWith =>
      __$$inProgressImplCopyWithImpl<_$inProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return inProgress(progressValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return inProgress?.call(progressValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(progressValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class _inProgress implements CameraState {
  const factory _inProgress({final double progressValue}) = _$inProgressImpl;

  double get progressValue;
  @JsonKey(ignore: true)
  _$$inProgressImplCopyWith<_$inProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({XFile? image, List<Uint8List>? pathMoreThanOnce});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? pathMoreThanOnce = freezed,
  }) {
    return _then(_$SuccessImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      pathMoreThanOnce: freezed == pathMoreThanOnce
          ? _value._pathMoreThanOnce
          : pathMoreThanOnce // ignore: cast_nullable_to_non_nullable
              as List<Uint8List>?,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl({this.image, final List<Uint8List>? pathMoreThanOnce})
      : _pathMoreThanOnce = pathMoreThanOnce;

  @override
  final XFile? image;
  final List<Uint8List>? _pathMoreThanOnce;
  @override
  List<Uint8List>? get pathMoreThanOnce {
    final value = _pathMoreThanOnce;
    if (value == null) return null;
    if (_pathMoreThanOnce is EqualUnmodifiableListView)
      return _pathMoreThanOnce;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CameraState.success(image: $image, pathMoreThanOnce: $pathMoreThanOnce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._pathMoreThanOnce, _pathMoreThanOnce));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image,
      const DeepCollectionEquality().hash(_pathMoreThanOnce));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return success(image, pathMoreThanOnce);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return success?.call(image, pathMoreThanOnce);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(image, pathMoreThanOnce);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements CameraState {
  const factory _Success(
      {final XFile? image,
      final List<Uint8List>? pathMoreThanOnce}) = _$SuccessImpl;

  XFile? get image;
  List<Uint8List>? get pathMoreThanOnce;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CaptureFailureImplCopyWith<$Res> {
  factory _$$CaptureFailureImplCopyWith(_$CaptureFailureImpl value,
          $Res Function(_$CaptureFailureImpl) then) =
      __$$CaptureFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$CaptureFailureImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$CaptureFailureImpl>
    implements _$$CaptureFailureImplCopyWith<$Res> {
  __$$CaptureFailureImplCopyWithImpl(
      _$CaptureFailureImpl _value, $Res Function(_$CaptureFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$CaptureFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CaptureFailureImpl implements _CaptureFailure {
  const _$CaptureFailureImpl({this.error = ""});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'CameraState.captureFailure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CaptureFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CaptureFailureImplCopyWith<_$CaptureFailureImpl> get copyWith =>
      __$$CaptureFailureImplCopyWithImpl<_$CaptureFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FlashMode flashMode) ready,
    required TResult Function(String error) failure,
    required TResult Function(double progressValue) inProgress,
    required TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)
        success,
    required TResult Function(String error) captureFailure,
  }) {
    return captureFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(FlashMode flashMode)? ready,
    TResult? Function(String error)? failure,
    TResult? Function(double progressValue)? inProgress,
    TResult? Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult? Function(String error)? captureFailure,
  }) {
    return captureFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FlashMode flashMode)? ready,
    TResult Function(String error)? failure,
    TResult Function(double progressValue)? inProgress,
    TResult Function(XFile? image, List<Uint8List>? pathMoreThanOnce)? success,
    TResult Function(String error)? captureFailure,
    required TResult orElse(),
  }) {
    if (captureFailure != null) {
      return captureFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Ready value) ready,
    required TResult Function(_Failure value) failure,
    required TResult Function(_inProgress value) inProgress,
    required TResult Function(_Success value) success,
    required TResult Function(_CaptureFailure value) captureFailure,
  }) {
    return captureFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Ready value)? ready,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_inProgress value)? inProgress,
    TResult? Function(_Success value)? success,
    TResult? Function(_CaptureFailure value)? captureFailure,
  }) {
    return captureFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Ready value)? ready,
    TResult Function(_Failure value)? failure,
    TResult Function(_inProgress value)? inProgress,
    TResult Function(_Success value)? success,
    TResult Function(_CaptureFailure value)? captureFailure,
    required TResult orElse(),
  }) {
    if (captureFailure != null) {
      return captureFailure(this);
    }
    return orElse();
  }
}

abstract class _CaptureFailure implements CameraState {
  const factory _CaptureFailure({final String error}) = _$CaptureFailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$CaptureFailureImplCopyWith<_$CaptureFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

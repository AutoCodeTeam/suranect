// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_otp_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VerifyOtpState {
  int get otp => throw _privateConstructorUsedError;
  Duration get sendAgain => throw _privateConstructorUsedError;
  VerifyOtpStatus get getOtpStatus => throw _privateConstructorUsedError;
  VerifyOtpResponse get getOtpResponse => throw _privateConstructorUsedError;
  VerifyOtpStatus get verifyOtpStatus => throw _privateConstructorUsedError;
  VerifyOtpResponse get response => throw _privateConstructorUsedError;
  String get error => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $VerifyOtpStateCopyWith<VerifyOtpState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifyOtpStateCopyWith<$Res> {
  factory $VerifyOtpStateCopyWith(
          VerifyOtpState value, $Res Function(VerifyOtpState) then) =
      _$VerifyOtpStateCopyWithImpl<$Res, VerifyOtpState>;
  @useResult
  $Res call(
      {int otp,
      Duration sendAgain,
      VerifyOtpStatus getOtpStatus,
      VerifyOtpResponse getOtpResponse,
      VerifyOtpStatus verifyOtpStatus,
      VerifyOtpResponse response,
      String error});

  $VerifyOtpResponseCopyWith<$Res> get getOtpResponse;
  $VerifyOtpResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$VerifyOtpStateCopyWithImpl<$Res, $Val extends VerifyOtpState>
    implements $VerifyOtpStateCopyWith<$Res> {
  _$VerifyOtpStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? sendAgain = null,
    Object? getOtpStatus = null,
    Object? getOtpResponse = null,
    Object? verifyOtpStatus = null,
    Object? response = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      sendAgain: null == sendAgain
          ? _value.sendAgain
          : sendAgain // ignore: cast_nullable_to_non_nullable
              as Duration,
      getOtpStatus: null == getOtpStatus
          ? _value.getOtpStatus
          : getOtpStatus // ignore: cast_nullable_to_non_nullable
              as VerifyOtpStatus,
      getOtpResponse: null == getOtpResponse
          ? _value.getOtpResponse
          : getOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse,
      verifyOtpStatus: null == verifyOtpStatus
          ? _value.verifyOtpStatus
          : verifyOtpStatus // ignore: cast_nullable_to_non_nullable
              as VerifyOtpStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyOtpResponseCopyWith<$Res> get getOtpResponse {
    return $VerifyOtpResponseCopyWith<$Res>(_value.getOtpResponse, (value) {
      return _then(_value.copyWith(getOtpResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $VerifyOtpResponseCopyWith<$Res> get response {
    return $VerifyOtpResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $VerifyOtpStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int otp,
      Duration sendAgain,
      VerifyOtpStatus getOtpStatus,
      VerifyOtpResponse getOtpResponse,
      VerifyOtpStatus verifyOtpStatus,
      VerifyOtpResponse response,
      String error});

  @override
  $VerifyOtpResponseCopyWith<$Res> get getOtpResponse;
  @override
  $VerifyOtpResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$VerifyOtpStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otp = null,
    Object? sendAgain = null,
    Object? getOtpStatus = null,
    Object? getOtpResponse = null,
    Object? verifyOtpStatus = null,
    Object? response = null,
    Object? error = null,
  }) {
    return _then(_$InitialImpl(
      otp: null == otp
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as int,
      sendAgain: null == sendAgain
          ? _value.sendAgain
          : sendAgain // ignore: cast_nullable_to_non_nullable
              as Duration,
      getOtpStatus: null == getOtpStatus
          ? _value.getOtpStatus
          : getOtpStatus // ignore: cast_nullable_to_non_nullable
              as VerifyOtpStatus,
      getOtpResponse: null == getOtpResponse
          ? _value.getOtpResponse
          : getOtpResponse // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse,
      verifyOtpStatus: null == verifyOtpStatus
          ? _value.verifyOtpStatus
          : verifyOtpStatus // ignore: cast_nullable_to_non_nullable
              as VerifyOtpStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as VerifyOtpResponse,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.otp = 0,
      this.sendAgain = const Duration(seconds: 0),
      this.getOtpStatus = VerifyOtpStatus.initial,
      this.getOtpResponse = const VerifyOtpResponse(message: "", status: ""),
      this.verifyOtpStatus = VerifyOtpStatus.initial,
      this.response = const VerifyOtpResponse(message: "", status: ""),
      this.error = ''});

  @override
  @JsonKey()
  final int otp;
  @override
  @JsonKey()
  final Duration sendAgain;
  @override
  @JsonKey()
  final VerifyOtpStatus getOtpStatus;
  @override
  @JsonKey()
  final VerifyOtpResponse getOtpResponse;
  @override
  @JsonKey()
  final VerifyOtpStatus verifyOtpStatus;
  @override
  @JsonKey()
  final VerifyOtpResponse response;
  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'VerifyOtpState.initial(otp: $otp, sendAgain: $sendAgain, getOtpStatus: $getOtpStatus, getOtpResponse: $getOtpResponse, verifyOtpStatus: $verifyOtpStatus, response: $response, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.otp, otp) || other.otp == otp) &&
            (identical(other.sendAgain, sendAgain) ||
                other.sendAgain == sendAgain) &&
            (identical(other.getOtpStatus, getOtpStatus) ||
                other.getOtpStatus == getOtpStatus) &&
            (identical(other.getOtpResponse, getOtpResponse) ||
                other.getOtpResponse == getOtpResponse) &&
            (identical(other.verifyOtpStatus, verifyOtpStatus) ||
                other.verifyOtpStatus == verifyOtpStatus) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otp, sendAgain, getOtpStatus,
      getOtpResponse, verifyOtpStatus, response, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)
        initial,
  }) {
    return initial(otp, sendAgain, getOtpStatus, getOtpResponse,
        verifyOtpStatus, response, error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)?
        initial,
  }) {
    return initial?.call(otp, sendAgain, getOtpStatus, getOtpResponse,
        verifyOtpStatus, response, error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int otp,
            Duration sendAgain,
            VerifyOtpStatus getOtpStatus,
            VerifyOtpResponse getOtpResponse,
            VerifyOtpStatus verifyOtpStatus,
            VerifyOtpResponse response,
            String error)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(otp, sendAgain, getOtpStatus, getOtpResponse,
          verifyOtpStatus, response, error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements VerifyOtpState {
  const factory _Initial(
      {final int otp,
      final Duration sendAgain,
      final VerifyOtpStatus getOtpStatus,
      final VerifyOtpResponse getOtpResponse,
      final VerifyOtpStatus verifyOtpStatus,
      final VerifyOtpResponse response,
      final String error}) = _$InitialImpl;

  @override
  int get otp;
  @override
  Duration get sendAgain;
  @override
  VerifyOtpStatus get getOtpStatus;
  @override
  VerifyOtpResponse get getOtpResponse;
  @override
  VerifyOtpStatus get verifyOtpStatus;
  @override
  VerifyOtpResponse get response;
  @override
  String get error;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

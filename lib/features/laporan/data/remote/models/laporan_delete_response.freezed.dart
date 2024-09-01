// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_delete_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaporanDeleteResponse _$LaporanDeleteResponseFromJson(
    Map<String, dynamic> json) {
  return _LaporanDeleteResponse.fromJson(json);
}

/// @nodoc
mixin _$LaporanDeleteResponse {
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanDeleteResponseCopyWith<LaporanDeleteResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanDeleteResponseCopyWith<$Res> {
  factory $LaporanDeleteResponseCopyWith(LaporanDeleteResponse value,
          $Res Function(LaporanDeleteResponse) then) =
      _$LaporanDeleteResponseCopyWithImpl<$Res, LaporanDeleteResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class _$LaporanDeleteResponseCopyWithImpl<$Res,
        $Val extends LaporanDeleteResponse>
    implements $LaporanDeleteResponseCopyWith<$Res> {
  _$LaporanDeleteResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanDeleteResponseImplCopyWith<$Res>
    implements $LaporanDeleteResponseCopyWith<$Res> {
  factory _$$LaporanDeleteResponseImplCopyWith(
          _$LaporanDeleteResponseImpl value,
          $Res Function(_$LaporanDeleteResponseImpl) then) =
      __$$LaporanDeleteResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class __$$LaporanDeleteResponseImplCopyWithImpl<$Res>
    extends _$LaporanDeleteResponseCopyWithImpl<$Res,
        _$LaporanDeleteResponseImpl>
    implements _$$LaporanDeleteResponseImplCopyWith<$Res> {
  __$$LaporanDeleteResponseImplCopyWithImpl(_$LaporanDeleteResponseImpl _value,
      $Res Function(_$LaporanDeleteResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$LaporanDeleteResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanDeleteResponseImpl implements _LaporanDeleteResponse {
  const _$LaporanDeleteResponseImpl(
      {@JsonKey(name: "Message") required this.message,
      @JsonKey(name: "Status") required this.status});

  factory _$LaporanDeleteResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanDeleteResponseImplFromJson(json);

  @override
  @JsonKey(name: "Message")
  final String message;
  @override
  @JsonKey(name: "Status")
  final String status;

  @override
  String toString() {
    return 'LaporanDeleteResponse(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanDeleteResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanDeleteResponseImplCopyWith<_$LaporanDeleteResponseImpl>
      get copyWith => __$$LaporanDeleteResponseImplCopyWithImpl<
          _$LaporanDeleteResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanDeleteResponseImplToJson(
      this,
    );
  }
}

abstract class _LaporanDeleteResponse implements LaporanDeleteResponse {
  const factory _LaporanDeleteResponse(
          {@JsonKey(name: "Message") required final String message,
          @JsonKey(name: "Status") required final String status}) =
      _$LaporanDeleteResponseImpl;

  factory _LaporanDeleteResponse.fromJson(Map<String, dynamic> json) =
      _$LaporanDeleteResponseImpl.fromJson;

  @override
  @JsonKey(name: "Message")
  String get message;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$LaporanDeleteResponseImplCopyWith<_$LaporanDeleteResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

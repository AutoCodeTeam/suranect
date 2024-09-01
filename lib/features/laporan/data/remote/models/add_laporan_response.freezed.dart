// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddLaporanResponse _$AddLaporanResponseFromJson(Map<String, dynamic> json) {
  return _AddLaporanResponse.fromJson(json);
}

/// @nodoc
mixin _$AddLaporanResponse {
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddLaporanResponseCopyWith<AddLaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddLaporanResponseCopyWith<$Res> {
  factory $AddLaporanResponseCopyWith(
          AddLaporanResponse value, $Res Function(AddLaporanResponse) then) =
      _$AddLaporanResponseCopyWithImpl<$Res, AddLaporanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class _$AddLaporanResponseCopyWithImpl<$Res, $Val extends AddLaporanResponse>
    implements $AddLaporanResponseCopyWith<$Res> {
  _$AddLaporanResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$AddLaporanResponseImplCopyWith<$Res>
    implements $AddLaporanResponseCopyWith<$Res> {
  factory _$$AddLaporanResponseImplCopyWith(_$AddLaporanResponseImpl value,
          $Res Function(_$AddLaporanResponseImpl) then) =
      __$$AddLaporanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class __$$AddLaporanResponseImplCopyWithImpl<$Res>
    extends _$AddLaporanResponseCopyWithImpl<$Res, _$AddLaporanResponseImpl>
    implements _$$AddLaporanResponseImplCopyWith<$Res> {
  __$$AddLaporanResponseImplCopyWithImpl(_$AddLaporanResponseImpl _value,
      $Res Function(_$AddLaporanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$AddLaporanResponseImpl(
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
class _$AddLaporanResponseImpl implements _AddLaporanResponse {
  const _$AddLaporanResponseImpl(
      {@JsonKey(name: "Message") required this.message,
      @JsonKey(name: "Status") required this.status});

  factory _$AddLaporanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddLaporanResponseImplFromJson(json);

  @override
  @JsonKey(name: "Message")
  final String message;
  @override
  @JsonKey(name: "Status")
  final String status;

  @override
  String toString() {
    return 'AddLaporanResponse(message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddLaporanResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddLaporanResponseImplCopyWith<_$AddLaporanResponseImpl> get copyWith =>
      __$$AddLaporanResponseImplCopyWithImpl<_$AddLaporanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddLaporanResponseImplToJson(
      this,
    );
  }
}

abstract class _AddLaporanResponse implements AddLaporanResponse {
  const factory _AddLaporanResponse(
          {@JsonKey(name: "Message") required final String message,
          @JsonKey(name: "Status") required final String status}) =
      _$AddLaporanResponseImpl;

  factory _AddLaporanResponse.fromJson(Map<String, dynamic> json) =
      _$AddLaporanResponseImpl.fromJson;

  @override
  @JsonKey(name: "Message")
  String get message;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$AddLaporanResponseImplCopyWith<_$AddLaporanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

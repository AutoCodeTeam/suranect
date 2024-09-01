// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaporanResponse _$LaporanResponseFromJson(Map<String, dynamic> json) {
  return _LaporanResponse.fromJson(json);
}

/// @nodoc
mixin _$LaporanResponse {
  @JsonKey(name: "Data")
  List<Laporan> get data => throw _privateConstructorUsedError;
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanResponseCopyWith<LaporanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanResponseCopyWith<$Res> {
  factory $LaporanResponseCopyWith(
          LaporanResponse value, $Res Function(LaporanResponse) then) =
      _$LaporanResponseCopyWithImpl<$Res, LaporanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Data") List<Laporan> data,
      @JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class _$LaporanResponseCopyWithImpl<$Res, $Val extends LaporanResponse>
    implements $LaporanResponseCopyWith<$Res> {
  _$LaporanResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Laporan>,
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
abstract class _$$LaporanResponseImplCopyWith<$Res>
    implements $LaporanResponseCopyWith<$Res> {
  factory _$$LaporanResponseImplCopyWith(_$LaporanResponseImpl value,
          $Res Function(_$LaporanResponseImpl) then) =
      __$$LaporanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Data") List<Laporan> data,
      @JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});
}

/// @nodoc
class __$$LaporanResponseImplCopyWithImpl<$Res>
    extends _$LaporanResponseCopyWithImpl<$Res, _$LaporanResponseImpl>
    implements _$$LaporanResponseImplCopyWith<$Res> {
  __$$LaporanResponseImplCopyWithImpl(
      _$LaporanResponseImpl _value, $Res Function(_$LaporanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$LaporanResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Laporan>,
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
class _$LaporanResponseImpl implements _LaporanResponse {
  const _$LaporanResponseImpl(
      {@JsonKey(name: "Data") required final List<Laporan> data,
      @JsonKey(name: "Message") required this.message,
      @JsonKey(name: "Status") required this.status})
      : _data = data;

  factory _$LaporanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanResponseImplFromJson(json);

  final List<Laporan> _data;
  @override
  @JsonKey(name: "Data")
  List<Laporan> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: "Message")
  final String message;
  @override
  @JsonKey(name: "Status")
  final String status;

  @override
  String toString() {
    return 'LaporanResponse(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanResponseImplCopyWith<_$LaporanResponseImpl> get copyWith =>
      __$$LaporanResponseImplCopyWithImpl<_$LaporanResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanResponseImplToJson(
      this,
    );
  }
}

abstract class _LaporanResponse implements LaporanResponse {
  const factory _LaporanResponse(
          {@JsonKey(name: "Data") required final List<Laporan> data,
          @JsonKey(name: "Message") required final String message,
          @JsonKey(name: "Status") required final String status}) =
      _$LaporanResponseImpl;

  factory _LaporanResponse.fromJson(Map<String, dynamic> json) =
      _$LaporanResponseImpl.fromJson;

  @override
  @JsonKey(name: "Data")
  List<Laporan> get data;
  @override
  @JsonKey(name: "Message")
  String get message;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$LaporanResponseImplCopyWith<_$LaporanResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

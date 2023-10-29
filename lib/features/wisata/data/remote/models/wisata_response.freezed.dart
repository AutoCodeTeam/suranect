// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wisata_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WisataResponse _$WisataResponseFromJson(Map<String, dynamic> json) {
  return _WisataResponse.fromJson(json);
}

/// @nodoc
mixin _$WisataResponse {
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: "Data")
  List<Wisata> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WisataResponseCopyWith<WisataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WisataResponseCopyWith<$Res> {
  factory $WisataResponseCopyWith(
          WisataResponse value, $Res Function(WisataResponse) then) =
      _$WisataResponseCopyWithImpl<$Res, WisataResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status,
      @JsonKey(name: "Data") List<Wisata> data});
}

/// @nodoc
class _$WisataResponseCopyWithImpl<$Res, $Val extends WisataResponse>
    implements $WisataResponseCopyWith<$Res> {
  _$WisataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
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
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Wisata>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WisataResponseImplCopyWith<$Res>
    implements $WisataResponseCopyWith<$Res> {
  factory _$$WisataResponseImplCopyWith(_$WisataResponseImpl value,
          $Res Function(_$WisataResponseImpl) then) =
      __$$WisataResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status,
      @JsonKey(name: "Data") List<Wisata> data});
}

/// @nodoc
class __$$WisataResponseImplCopyWithImpl<$Res>
    extends _$WisataResponseCopyWithImpl<$Res, _$WisataResponseImpl>
    implements _$$WisataResponseImplCopyWith<$Res> {
  __$$WisataResponseImplCopyWithImpl(
      _$WisataResponseImpl _value, $Res Function(_$WisataResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$WisataResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Wisata>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WisataResponseImpl implements _WisataResponse {
  const _$WisataResponseImpl(
      {@JsonKey(name: "Message") required this.message,
      @JsonKey(name: "Status") required this.status,
      @JsonKey(name: "Data") required final List<Wisata> data})
      : _data = data;

  factory _$WisataResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WisataResponseImplFromJson(json);

  @override
  @JsonKey(name: "Message")
  final String message;
  @override
  @JsonKey(name: "Status")
  final String status;
  final List<Wisata> _data;
  @override
  @JsonKey(name: "Data")
  List<Wisata> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WisataResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WisataResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WisataResponseImplCopyWith<_$WisataResponseImpl> get copyWith =>
      __$$WisataResponseImplCopyWithImpl<_$WisataResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WisataResponseImplToJson(
      this,
    );
  }
}

abstract class _WisataResponse implements WisataResponse {
  const factory _WisataResponse(
          {@JsonKey(name: "Message") required final String message,
          @JsonKey(name: "Status") required final String status,
          @JsonKey(name: "Data") required final List<Wisata> data}) =
      _$WisataResponseImpl;

  factory _WisataResponse.fromJson(Map<String, dynamic> json) =
      _$WisataResponseImpl.fromJson;

  @override
  @JsonKey(name: "Message")
  String get message;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(name: "Data")
  List<Wisata> get data;
  @override
  @JsonKey(ignore: true)
  _$$WisataResponseImplCopyWith<_$WisataResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

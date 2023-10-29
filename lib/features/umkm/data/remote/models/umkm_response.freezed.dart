// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'umkm_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UmkmResponse _$UmkmResponseFromJson(Map<String, dynamic> json) {
  return _UmkmResponse.fromJson(json);
}

/// @nodoc
mixin _$UmkmResponse {
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Umkm> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UmkmResponseCopyWith<UmkmResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UmkmResponseCopyWith<$Res> {
  factory $UmkmResponseCopyWith(
          UmkmResponse value, $Res Function(UmkmResponse) then) =
      _$UmkmResponseCopyWithImpl<$Res, UmkmResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Umkm> data});
}

/// @nodoc
class _$UmkmResponseCopyWithImpl<$Res, $Val extends UmkmResponse>
    implements $UmkmResponseCopyWith<$Res> {
  _$UmkmResponseCopyWithImpl(this._value, this._then);

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
              as List<Umkm>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UmkmResponseImplCopyWith<$Res>
    implements $UmkmResponseCopyWith<$Res> {
  factory _$$UmkmResponseImplCopyWith(
          _$UmkmResponseImpl value, $Res Function(_$UmkmResponseImpl) then) =
      __$$UmkmResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Umkm> data});
}

/// @nodoc
class __$$UmkmResponseImplCopyWithImpl<$Res>
    extends _$UmkmResponseCopyWithImpl<$Res, _$UmkmResponseImpl>
    implements _$$UmkmResponseImplCopyWith<$Res> {
  __$$UmkmResponseImplCopyWithImpl(
      _$UmkmResponseImpl _value, $Res Function(_$UmkmResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$UmkmResponseImpl(
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
              as List<Umkm>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UmkmResponseImpl implements _UmkmResponse {
  const _$UmkmResponseImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Data') required final List<Umkm> data})
      : _data = data;

  factory _$UmkmResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UmkmResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<Umkm> _data;
  @override
  @JsonKey(name: 'Data')
  List<Umkm> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'UmkmResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UmkmResponseImpl &&
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
  _$$UmkmResponseImplCopyWith<_$UmkmResponseImpl> get copyWith =>
      __$$UmkmResponseImplCopyWithImpl<_$UmkmResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UmkmResponseImplToJson(
      this,
    );
  }
}

abstract class _UmkmResponse implements UmkmResponse {
  const factory _UmkmResponse(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Data') required final List<Umkm> data}) =
      _$UmkmResponseImpl;

  factory _UmkmResponse.fromJson(Map<String, dynamic> json) =
      _$UmkmResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Data')
  List<Umkm> get data;
  @override
  @JsonKey(ignore: true)
  _$$UmkmResponseImplCopyWith<_$UmkmResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

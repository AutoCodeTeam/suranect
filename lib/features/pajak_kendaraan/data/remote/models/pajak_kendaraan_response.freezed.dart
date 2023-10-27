// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pajak_kendaraan_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PajakKendaraanResponse _$PajakKendaraanResponseFromJson(
    Map<String, dynamic> json) {
  return _PajakKendaraanResponse.fromJson(json);
}

/// @nodoc
mixin _$PajakKendaraanResponse {
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<PajakKendaraan> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PajakKendaraanResponseCopyWith<PajakKendaraanResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PajakKendaraanResponseCopyWith<$Res> {
  factory $PajakKendaraanResponseCopyWith(PajakKendaraanResponse value,
          $Res Function(PajakKendaraanResponse) then) =
      _$PajakKendaraanResponseCopyWithImpl<$Res, PajakKendaraanResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<PajakKendaraan> data});
}

/// @nodoc
class _$PajakKendaraanResponseCopyWithImpl<$Res,
        $Val extends PajakKendaraanResponse>
    implements $PajakKendaraanResponseCopyWith<$Res> {
  _$PajakKendaraanResponseCopyWithImpl(this._value, this._then);

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
              as List<PajakKendaraan>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PajakKendaraanResponseImplCopyWith<$Res>
    implements $PajakKendaraanResponseCopyWith<$Res> {
  factory _$$PajakKendaraanResponseImplCopyWith(
          _$PajakKendaraanResponseImpl value,
          $Res Function(_$PajakKendaraanResponseImpl) then) =
      __$$PajakKendaraanResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<PajakKendaraan> data});
}

/// @nodoc
class __$$PajakKendaraanResponseImplCopyWithImpl<$Res>
    extends _$PajakKendaraanResponseCopyWithImpl<$Res,
        _$PajakKendaraanResponseImpl>
    implements _$$PajakKendaraanResponseImplCopyWith<$Res> {
  __$$PajakKendaraanResponseImplCopyWithImpl(
      _$PajakKendaraanResponseImpl _value,
      $Res Function(_$PajakKendaraanResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$PajakKendaraanResponseImpl(
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
              as List<PajakKendaraan>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PajakKendaraanResponseImpl implements _PajakKendaraanResponse {
  const _$PajakKendaraanResponseImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Data') required final List<PajakKendaraan> data})
      : _data = data;

  factory _$PajakKendaraanResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PajakKendaraanResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<PajakKendaraan> _data;
  @override
  @JsonKey(name: 'Data')
  List<PajakKendaraan> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PajakKendaraanResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PajakKendaraanResponseImpl &&
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
  _$$PajakKendaraanResponseImplCopyWith<_$PajakKendaraanResponseImpl>
      get copyWith => __$$PajakKendaraanResponseImplCopyWithImpl<
          _$PajakKendaraanResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PajakKendaraanResponseImplToJson(
      this,
    );
  }
}

abstract class _PajakKendaraanResponse implements PajakKendaraanResponse {
  const factory _PajakKendaraanResponse(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Data') required final List<PajakKendaraan> data}) =
      _$PajakKendaraanResponseImpl;

  factory _PajakKendaraanResponse.fromJson(Map<String, dynamic> json) =
      _$PajakKendaraanResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Data')
  List<PajakKendaraan> get data;
  @override
  @JsonKey(ignore: true)
  _$$PajakKendaraanResponseImplCopyWith<_$PajakKendaraanResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

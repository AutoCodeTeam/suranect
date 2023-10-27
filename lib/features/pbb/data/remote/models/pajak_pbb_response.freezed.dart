// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pajak_pbb_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PajakPbbResponse _$PajakPbbResponseFromJson(Map<String, dynamic> json) {
  return _PajakPbbResponse.fromJson(json);
}

/// @nodoc
mixin _$PajakPbbResponse {
  @JsonKey(name: "Data")
  List<PajakPBB> get data => throw _privateConstructorUsedError;
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PajakPbbResponseCopyWith<PajakPbbResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PajakPbbResponseCopyWith<$Res> {
  factory $PajakPbbResponseCopyWith(
          PajakPbbResponse value, $Res Function(PajakPbbResponse) then) =
      _$PajakPbbResponseCopyWithImpl<$Res, PajakPbbResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Data") List<PajakPBB> data,
      @JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status});
}

/// @nodoc
class _$PajakPbbResponseCopyWithImpl<$Res, $Val extends PajakPbbResponse>
    implements $PajakPbbResponseCopyWith<$Res> {
  _$PajakPbbResponseCopyWithImpl(this._value, this._then);

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
              as List<PajakPBB>,
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
abstract class _$$PajakPbbResponseImplCopyWith<$Res>
    implements $PajakPbbResponseCopyWith<$Res> {
  factory _$$PajakPbbResponseImplCopyWith(_$PajakPbbResponseImpl value,
          $Res Function(_$PajakPbbResponseImpl) then) =
      __$$PajakPbbResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Data") List<PajakPBB> data,
      @JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status});
}

/// @nodoc
class __$$PajakPbbResponseImplCopyWithImpl<$Res>
    extends _$PajakPbbResponseCopyWithImpl<$Res, _$PajakPbbResponseImpl>
    implements _$$PajakPbbResponseImplCopyWith<$Res> {
  __$$PajakPbbResponseImplCopyWithImpl(_$PajakPbbResponseImpl _value,
      $Res Function(_$PajakPbbResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$PajakPbbResponseImpl(
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<PajakPBB>,
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
class _$PajakPbbResponseImpl implements _PajakPbbResponse {
  const _$PajakPbbResponseImpl(
      {@JsonKey(name: "Data") required final List<PajakPBB> data,
      @JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status})
      : _data = data;

  factory _$PajakPbbResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PajakPbbResponseImplFromJson(json);

  final List<PajakPBB> _data;
  @override
  @JsonKey(name: "Data")
  List<PajakPBB> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;

  @override
  String toString() {
    return 'PajakPbbResponse(data: $data, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PajakPbbResponseImpl &&
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
  _$$PajakPbbResponseImplCopyWith<_$PajakPbbResponseImpl> get copyWith =>
      __$$PajakPbbResponseImplCopyWithImpl<_$PajakPbbResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PajakPbbResponseImplToJson(
      this,
    );
  }
}

abstract class _PajakPbbResponse implements PajakPbbResponse {
  const factory _PajakPbbResponse(
          {@JsonKey(name: "Data") required final List<PajakPBB> data,
          @JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status}) =
      _$PajakPbbResponseImpl;

  factory _PajakPbbResponse.fromJson(Map<String, dynamic> json) =
      _$PajakPbbResponseImpl.fromJson;

  @override
  @JsonKey(name: "Data")
  List<PajakPBB> get data;
  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$PajakPbbResponseImplCopyWith<_$PajakPbbResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

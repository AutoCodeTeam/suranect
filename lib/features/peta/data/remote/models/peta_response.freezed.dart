// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'peta_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PetaResponse _$PetaResponseFromJson(Map<String, dynamic> json) {
  return _PetaResponse.fromJson(json);
}

/// @nodoc
mixin _$PetaResponse {
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Peta> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PetaResponseCopyWith<PetaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PetaResponseCopyWith<$Res> {
  factory $PetaResponseCopyWith(
          PetaResponse value, $Res Function(PetaResponse) then) =
      _$PetaResponseCopyWithImpl<$Res, PetaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Peta> data});
}

/// @nodoc
class _$PetaResponseCopyWithImpl<$Res, $Val extends PetaResponse>
    implements $PetaResponseCopyWith<$Res> {
  _$PetaResponseCopyWithImpl(this._value, this._then);

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
              as List<Peta>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PetaResponseImplCopyWith<$Res>
    implements $PetaResponseCopyWith<$Res> {
  factory _$$PetaResponseImplCopyWith(
          _$PetaResponseImpl value, $Res Function(_$PetaResponseImpl) then) =
      __$$PetaResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Peta> data});
}

/// @nodoc
class __$$PetaResponseImplCopyWithImpl<$Res>
    extends _$PetaResponseCopyWithImpl<$Res, _$PetaResponseImpl>
    implements _$$PetaResponseImplCopyWith<$Res> {
  __$$PetaResponseImplCopyWithImpl(
      _$PetaResponseImpl _value, $Res Function(_$PetaResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$PetaResponseImpl(
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
              as List<Peta>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PetaResponseImpl implements _PetaResponse {
  const _$PetaResponseImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Data') required final List<Peta> data})
      : _data = data;

  factory _$PetaResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PetaResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<Peta> _data;
  @override
  @JsonKey(name: 'Data')
  List<Peta> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'PetaResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PetaResponseImpl &&
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
  _$$PetaResponseImplCopyWith<_$PetaResponseImpl> get copyWith =>
      __$$PetaResponseImplCopyWithImpl<_$PetaResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PetaResponseImplToJson(
      this,
    );
  }
}

abstract class _PetaResponse implements PetaResponse {
  const factory _PetaResponse(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Data') required final List<Peta> data}) =
      _$PetaResponseImpl;

  factory _PetaResponse.fromJson(Map<String, dynamic> json) =
      _$PetaResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Data')
  List<Peta> get data;
  @override
  @JsonKey(ignore: true)
  _$$PetaResponseImplCopyWith<_$PetaResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

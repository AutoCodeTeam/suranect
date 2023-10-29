// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berita_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeritaResponse _$BeritaResponseFromJson(Map<String, dynamic> json) {
  return _BeritResponse.fromJson(json);
}

/// @nodoc
mixin _$BeritaResponse {
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Berita> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeritaResponseCopyWith<BeritaResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeritaResponseCopyWith<$Res> {
  factory $BeritaResponseCopyWith(
          BeritaResponse value, $Res Function(BeritaResponse) then) =
      _$BeritaResponseCopyWithImpl<$Res, BeritaResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Berita> data});
}

/// @nodoc
class _$BeritaResponseCopyWithImpl<$Res, $Val extends BeritaResponse>
    implements $BeritaResponseCopyWith<$Res> {
  _$BeritaResponseCopyWithImpl(this._value, this._then);

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
              as List<Berita>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeritResponseImplCopyWith<$Res>
    implements $BeritaResponseCopyWith<$Res> {
  factory _$$BeritResponseImplCopyWith(
          _$BeritResponseImpl value, $Res Function(_$BeritResponseImpl) then) =
      __$$BeritResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Berita> data});
}

/// @nodoc
class __$$BeritResponseImplCopyWithImpl<$Res>
    extends _$BeritaResponseCopyWithImpl<$Res, _$BeritResponseImpl>
    implements _$$BeritResponseImplCopyWith<$Res> {
  __$$BeritResponseImplCopyWithImpl(
      _$BeritResponseImpl _value, $Res Function(_$BeritResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$BeritResponseImpl(
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
              as List<Berita>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeritResponseImpl implements _BeritResponse {
  const _$BeritResponseImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Data') required final List<Berita> data})
      : _data = data;

  factory _$BeritResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeritResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<Berita> _data;
  @override
  @JsonKey(name: 'Data')
  List<Berita> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BeritaResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeritResponseImpl &&
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
  _$$BeritResponseImplCopyWith<_$BeritResponseImpl> get copyWith =>
      __$$BeritResponseImplCopyWithImpl<_$BeritResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeritResponseImplToJson(
      this,
    );
  }
}

abstract class _BeritResponse implements BeritaResponse {
  const factory _BeritResponse(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Data') required final List<Berita> data}) =
      _$BeritResponseImpl;

  factory _BeritResponse.fromJson(Map<String, dynamic> json) =
      _$BeritResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Data')
  List<Berita> get data;
  @override
  @JsonKey(ignore: true)
  _$$BeritResponseImplCopyWith<_$BeritResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

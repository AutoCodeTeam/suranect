// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenAuth _$TokenAuthFromJson(Map<String, dynamic> json) {
  return _TokenAuth.fromJson(json);
}

/// @nodoc
mixin _$TokenAuth {
  @HiveField(0)
  String get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenAuthCopyWith<TokenAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAuthCopyWith<$Res> {
  factory $TokenAuthCopyWith(TokenAuth value, $Res Function(TokenAuth) then) =
      _$TokenAuthCopyWithImpl<$Res, TokenAuth>;
  @useResult
  $Res call({@HiveField(0) String token});
}

/// @nodoc
class _$TokenAuthCopyWithImpl<$Res, $Val extends TokenAuth>
    implements $TokenAuthCopyWith<$Res> {
  _$TokenAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TokenAuthImplCopyWith<$Res>
    implements $TokenAuthCopyWith<$Res> {
  factory _$$TokenAuthImplCopyWith(
          _$TokenAuthImpl value, $Res Function(_$TokenAuthImpl) then) =
      __$$TokenAuthImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@HiveField(0) String token});
}

/// @nodoc
class __$$TokenAuthImplCopyWithImpl<$Res>
    extends _$TokenAuthCopyWithImpl<$Res, _$TokenAuthImpl>
    implements _$$TokenAuthImplCopyWith<$Res> {
  __$$TokenAuthImplCopyWithImpl(
      _$TokenAuthImpl _value, $Res Function(_$TokenAuthImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
  }) {
    return _then(_$TokenAuthImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenAuthImpl implements _TokenAuth {
  const _$TokenAuthImpl({@HiveField(0) required this.token});

  factory _$TokenAuthImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenAuthImplFromJson(json);

  @override
  @HiveField(0)
  final String token;

  @override
  String toString() {
    return 'TokenAuth(token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenAuthImpl &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenAuthImplCopyWith<_$TokenAuthImpl> get copyWith =>
      __$$TokenAuthImplCopyWithImpl<_$TokenAuthImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenAuthImplToJson(
      this,
    );
  }
}

abstract class _TokenAuth implements TokenAuth {
  const factory _TokenAuth({@HiveField(0) required final String token}) =
      _$TokenAuthImpl;

  factory _TokenAuth.fromJson(Map<String, dynamic> json) =
      _$TokenAuthImpl.fromJson;

  @override
  @HiveField(0)
  String get token;
  @override
  @JsonKey(ignore: true)
  _$$TokenAuthImplCopyWith<_$TokenAuthImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

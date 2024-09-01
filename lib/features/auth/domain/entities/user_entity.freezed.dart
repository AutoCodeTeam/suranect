// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserEntity _$UserEntityFromJson(Map<String, dynamic> json) {
  return _UserEntity.fromJson(json);
}

/// @nodoc
mixin _$UserEntity {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedAt")
  String get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "UpdatedAt")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "DeletedAt")
  String? get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "Name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "Username")
  String get username => throw _privateConstructorUsedError;
  @JsonKey(name: "Password")
  String get password => throw _privateConstructorUsedError;
  @JsonKey(name: "Photo")
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "Email")
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: "EmailVerify")
  bool get emailVerify => throw _privateConstructorUsedError;
  @JsonKey(name: "EmailCode")
  int get emailCode => throw _privateConstructorUsedError;
  @JsonKey(name: "Laporans")
  List<Laporan>? get laporans => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEntityCopyWith<UserEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEntityCopyWith<$Res> {
  factory $UserEntityCopyWith(
          UserEntity value, $Res Function(UserEntity) then) =
      _$UserEntityCopyWithImpl<$Res, UserEntity>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "CreatedAt") String createdAt,
      @JsonKey(name: "UpdatedAt") String updatedAt,
      @JsonKey(name: "DeletedAt") String? deletedAt,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Username") String username,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "Photo") String photo,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "EmailVerify") bool emailVerify,
      @JsonKey(name: "EmailCode") int emailCode,
      @JsonKey(name: "Laporans") List<Laporan>? laporans});
}

/// @nodoc
class _$UserEntityCopyWithImpl<$Res, $Val extends UserEntity>
    implements $UserEntityCopyWith<$Res> {
  _$UserEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? photo = null,
    Object? email = null,
    Object? emailVerify = null,
    Object? emailCode = null,
    Object? laporans = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerify: null == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      emailCode: null == emailCode
          ? _value.emailCode
          : emailCode // ignore: cast_nullable_to_non_nullable
              as int,
      laporans: freezed == laporans
          ? _value.laporans
          : laporans // ignore: cast_nullable_to_non_nullable
              as List<Laporan>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserEntityImplCopyWith<$Res>
    implements $UserEntityCopyWith<$Res> {
  factory _$$UserEntityImplCopyWith(
          _$UserEntityImpl value, $Res Function(_$UserEntityImpl) then) =
      __$$UserEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "CreatedAt") String createdAt,
      @JsonKey(name: "UpdatedAt") String updatedAt,
      @JsonKey(name: "DeletedAt") String? deletedAt,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Username") String username,
      @JsonKey(name: "Password") String password,
      @JsonKey(name: "Photo") String photo,
      @JsonKey(name: "Email") String email,
      @JsonKey(name: "EmailVerify") bool emailVerify,
      @JsonKey(name: "EmailCode") int emailCode,
      @JsonKey(name: "Laporans") List<Laporan>? laporans});
}

/// @nodoc
class __$$UserEntityImplCopyWithImpl<$Res>
    extends _$UserEntityCopyWithImpl<$Res, _$UserEntityImpl>
    implements _$$UserEntityImplCopyWith<$Res> {
  __$$UserEntityImplCopyWithImpl(
      _$UserEntityImpl _value, $Res Function(_$UserEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? name = null,
    Object? username = null,
    Object? password = null,
    Object? photo = null,
    Object? email = null,
    Object? emailVerify = null,
    Object? emailCode = null,
    Object? laporans = freezed,
  }) {
    return _then(_$UserEntityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      emailVerify: null == emailVerify
          ? _value.emailVerify
          : emailVerify // ignore: cast_nullable_to_non_nullable
              as bool,
      emailCode: null == emailCode
          ? _value.emailCode
          : emailCode // ignore: cast_nullable_to_non_nullable
              as int,
      laporans: freezed == laporans
          ? _value._laporans
          : laporans // ignore: cast_nullable_to_non_nullable
              as List<Laporan>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserEntityImpl implements _UserEntity {
  const _$UserEntityImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "CreatedAt") required this.createdAt,
      @JsonKey(name: "UpdatedAt") required this.updatedAt,
      @JsonKey(name: "DeletedAt") this.deletedAt,
      @JsonKey(name: "Name") required this.name,
      @JsonKey(name: "Username") required this.username,
      @JsonKey(name: "Password") required this.password,
      @JsonKey(name: "Photo") required this.photo,
      @JsonKey(name: "Email") required this.email,
      @JsonKey(name: "EmailVerify") required this.emailVerify,
      @JsonKey(name: "EmailCode") required this.emailCode,
      @JsonKey(name: "Laporans") final List<Laporan>? laporans})
      : _laporans = laporans;

  factory _$UserEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserEntityImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "CreatedAt")
  final String createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  final String updatedAt;
  @override
  @JsonKey(name: "DeletedAt")
  final String? deletedAt;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "Username")
  final String username;
  @override
  @JsonKey(name: "Password")
  final String password;
  @override
  @JsonKey(name: "Photo")
  final String photo;
  @override
  @JsonKey(name: "Email")
  final String email;
  @override
  @JsonKey(name: "EmailVerify")
  final bool emailVerify;
  @override
  @JsonKey(name: "EmailCode")
  final int emailCode;
  final List<Laporan>? _laporans;
  @override
  @JsonKey(name: "Laporans")
  List<Laporan>? get laporans {
    final value = _laporans;
    if (value == null) return null;
    if (_laporans is EqualUnmodifiableListView) return _laporans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserEntity(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, name: $name, username: $username, password: $password, photo: $photo, email: $email, emailVerify: $emailVerify, emailCode: $emailCode, laporans: $laporans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.emailVerify, emailVerify) ||
                other.emailVerify == emailVerify) &&
            (identical(other.emailCode, emailCode) ||
                other.emailCode == emailCode) &&
            const DeepCollectionEquality().equals(other._laporans, _laporans));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      deletedAt,
      name,
      username,
      password,
      photo,
      email,
      emailVerify,
      emailCode,
      const DeepCollectionEquality().hash(_laporans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      __$$UserEntityImplCopyWithImpl<_$UserEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserEntityImplToJson(
      this,
    );
  }
}

abstract class _UserEntity implements UserEntity {
  const factory _UserEntity(
          {@JsonKey(name: "ID") required final int id,
          @JsonKey(name: "CreatedAt") required final String createdAt,
          @JsonKey(name: "UpdatedAt") required final String updatedAt,
          @JsonKey(name: "DeletedAt") final String? deletedAt,
          @JsonKey(name: "Name") required final String name,
          @JsonKey(name: "Username") required final String username,
          @JsonKey(name: "Password") required final String password,
          @JsonKey(name: "Photo") required final String photo,
          @JsonKey(name: "Email") required final String email,
          @JsonKey(name: "EmailVerify") required final bool emailVerify,
          @JsonKey(name: "EmailCode") required final int emailCode,
          @JsonKey(name: "Laporans") final List<Laporan>? laporans}) =
      _$UserEntityImpl;

  factory _UserEntity.fromJson(Map<String, dynamic> json) =
      _$UserEntityImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "CreatedAt")
  String get createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  String get updatedAt;
  @override
  @JsonKey(name: "DeletedAt")
  String? get deletedAt;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "Username")
  String get username;
  @override
  @JsonKey(name: "Password")
  String get password;
  @override
  @JsonKey(name: "Photo")
  String get photo;
  @override
  @JsonKey(name: "Email")
  String get email;
  @override
  @JsonKey(name: "EmailVerify")
  bool get emailVerify;
  @override
  @JsonKey(name: "EmailCode")
  int get emailCode;
  @override
  @JsonKey(name: "Laporans")
  List<Laporan>? get laporans;
  @override
  @JsonKey(ignore: true)
  _$$UserEntityImplCopyWith<_$UserEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

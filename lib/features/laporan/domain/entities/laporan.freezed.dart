// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Laporan _$LaporanFromJson(Map<String, dynamic> json) {
  return _Laporan.fromJson(json);
}

/// @nodoc
mixin _$Laporan {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedAt")
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "UpdatedAt")
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "DeletedAt")
  dynamic get deletedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "UserID")
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: "User")
  UserEntity get user => throw _privateConstructorUsedError;
  @JsonKey(name: "Lokasi")
  String get lokasi => throw _privateConstructorUsedError;
  @JsonKey(name: "LokasiSpesifik")
  String get lokasiSpesifik => throw _privateConstructorUsedError;
  @JsonKey(name: "Permasalahan")
  String get permasalahan => throw _privateConstructorUsedError;
  @JsonKey(name: "Kategori")
  String get kategori => throw _privateConstructorUsedError;
  @JsonKey(name: "Photo")
  String get photo => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanCopyWith<Laporan> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanCopyWith<$Res> {
  factory $LaporanCopyWith(Laporan value, $Res Function(Laporan) then) =
      _$LaporanCopyWithImpl<$Res, Laporan>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "CreatedAt") DateTime createdAt,
      @JsonKey(name: "UpdatedAt") DateTime updatedAt,
      @JsonKey(name: "DeletedAt") dynamic deletedAt,
      @JsonKey(name: "UserID") int userId,
      @JsonKey(name: "User") UserEntity user,
      @JsonKey(name: "Lokasi") String lokasi,
      @JsonKey(name: "LokasiSpesifik") String lokasiSpesifik,
      @JsonKey(name: "Permasalahan") String permasalahan,
      @JsonKey(name: "Kategori") String kategori,
      @JsonKey(name: "Photo") String photo,
      @JsonKey(name: "Status") String status});

  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class _$LaporanCopyWithImpl<$Res, $Val extends Laporan>
    implements $LaporanCopyWith<$Res> {
  _$LaporanCopyWithImpl(this._value, this._then);

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
    Object? userId = null,
    Object? user = null,
    Object? lokasi = null,
    Object? lokasiSpesifik = null,
    Object? permasalahan = null,
    Object? kategori = null,
    Object? photo = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiSpesifik: null == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String,
      permasalahan: null == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get user {
    return $UserEntityCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaporanImplCopyWith<$Res> implements $LaporanCopyWith<$Res> {
  factory _$$LaporanImplCopyWith(
          _$LaporanImpl value, $Res Function(_$LaporanImpl) then) =
      __$$LaporanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "CreatedAt") DateTime createdAt,
      @JsonKey(name: "UpdatedAt") DateTime updatedAt,
      @JsonKey(name: "DeletedAt") dynamic deletedAt,
      @JsonKey(name: "UserID") int userId,
      @JsonKey(name: "User") UserEntity user,
      @JsonKey(name: "Lokasi") String lokasi,
      @JsonKey(name: "LokasiSpesifik") String lokasiSpesifik,
      @JsonKey(name: "Permasalahan") String permasalahan,
      @JsonKey(name: "Kategori") String kategori,
      @JsonKey(name: "Photo") String photo,
      @JsonKey(name: "Status") String status});

  @override
  $UserEntityCopyWith<$Res> get user;
}

/// @nodoc
class __$$LaporanImplCopyWithImpl<$Res>
    extends _$LaporanCopyWithImpl<$Res, _$LaporanImpl>
    implements _$$LaporanImplCopyWith<$Res> {
  __$$LaporanImplCopyWithImpl(
      _$LaporanImpl _value, $Res Function(_$LaporanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? deletedAt = freezed,
    Object? userId = null,
    Object? user = null,
    Object? lokasi = null,
    Object? lokasiSpesifik = null,
    Object? permasalahan = null,
    Object? kategori = null,
    Object? photo = null,
    Object? status = null,
  }) {
    return _then(_$LaporanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deletedAt: freezed == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiSpesifik: null == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String,
      permasalahan: null == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
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
class _$LaporanImpl implements _Laporan {
  const _$LaporanImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "CreatedAt") required this.createdAt,
      @JsonKey(name: "UpdatedAt") required this.updatedAt,
      @JsonKey(name: "DeletedAt") required this.deletedAt,
      @JsonKey(name: "UserID") required this.userId,
      @JsonKey(name: "User") required this.user,
      @JsonKey(name: "Lokasi") required this.lokasi,
      @JsonKey(name: "LokasiSpesifik") required this.lokasiSpesifik,
      @JsonKey(name: "Permasalahan") required this.permasalahan,
      @JsonKey(name: "Kategori") required this.kategori,
      @JsonKey(name: "Photo") required this.photo,
      @JsonKey(name: "Status") required this.status});

  factory _$LaporanImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "CreatedAt")
  final DateTime createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  final DateTime updatedAt;
  @override
  @JsonKey(name: "DeletedAt")
  final dynamic deletedAt;
  @override
  @JsonKey(name: "UserID")
  final int userId;
  @override
  @JsonKey(name: "User")
  final UserEntity user;
  @override
  @JsonKey(name: "Lokasi")
  final String lokasi;
  @override
  @JsonKey(name: "LokasiSpesifik")
  final String lokasiSpesifik;
  @override
  @JsonKey(name: "Permasalahan")
  final String permasalahan;
  @override
  @JsonKey(name: "Kategori")
  final String kategori;
  @override
  @JsonKey(name: "Photo")
  final String photo;
  @override
  @JsonKey(name: "Status")
  final String status;

  @override
  String toString() {
    return 'Laporan(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, deletedAt: $deletedAt, userId: $userId, user: $user, lokasi: $lokasi, lokasiSpesifik: $lokasiSpesifik, permasalahan: $permasalahan, kategori: $kategori, photo: $photo, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.deletedAt, deletedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.lokasiSpesifik, lokasiSpesifik) ||
                other.lokasiSpesifik == lokasiSpesifik) &&
            (identical(other.permasalahan, permasalahan) ||
                other.permasalahan == permasalahan) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      const DeepCollectionEquality().hash(deletedAt),
      userId,
      user,
      lokasi,
      lokasiSpesifik,
      permasalahan,
      kategori,
      photo,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanImplCopyWith<_$LaporanImpl> get copyWith =>
      __$$LaporanImplCopyWithImpl<_$LaporanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanImplToJson(
      this,
    );
  }
}

abstract class _Laporan implements Laporan {
  const factory _Laporan(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "CreatedAt") required final DateTime createdAt,
      @JsonKey(name: "UpdatedAt") required final DateTime updatedAt,
      @JsonKey(name: "DeletedAt") required final dynamic deletedAt,
      @JsonKey(name: "UserID") required final int userId,
      @JsonKey(name: "User") required final UserEntity user,
      @JsonKey(name: "Lokasi") required final String lokasi,
      @JsonKey(name: "LokasiSpesifik") required final String lokasiSpesifik,
      @JsonKey(name: "Permasalahan") required final String permasalahan,
      @JsonKey(name: "Kategori") required final String kategori,
      @JsonKey(name: "Photo") required final String photo,
      @JsonKey(name: "Status") required final String status}) = _$LaporanImpl;

  factory _Laporan.fromJson(Map<String, dynamic> json) = _$LaporanImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "CreatedAt")
  DateTime get createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  DateTime get updatedAt;
  @override
  @JsonKey(name: "DeletedAt")
  dynamic get deletedAt;
  @override
  @JsonKey(name: "UserID")
  int get userId;
  @override
  @JsonKey(name: "User")
  UserEntity get user;
  @override
  @JsonKey(name: "Lokasi")
  String get lokasi;
  @override
  @JsonKey(name: "LokasiSpesifik")
  String get lokasiSpesifik;
  @override
  @JsonKey(name: "Permasalahan")
  String get permasalahan;
  @override
  @JsonKey(name: "Kategori")
  String get kategori;
  @override
  @JsonKey(name: "Photo")
  String get photo;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$LaporanImplCopyWith<_$LaporanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

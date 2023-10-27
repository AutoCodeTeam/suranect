// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pajak_kendaraan.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PajakKendaraan _$PajakKendaraanFromJson(Map<String, dynamic> json) {
  return _PajakKendaraan.fromJson(json);
}

/// @nodoc
mixin _$PajakKendaraan {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Identitas_kendaraan")
  IdentitasKendaraan get identitasKendaraan =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "Penul_tahunan")
  PenulTahunan get penulTahunan => throw _privateConstructorUsedError;
  @JsonKey(name: "Penul_5_tahunan")
  Penul5Tahunan get penul5Tahunan => throw _privateConstructorUsedError;
  @JsonKey(name: "UpdatedAt")
  String get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedAt")
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PajakKendaraanCopyWith<PajakKendaraan> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PajakKendaraanCopyWith<$Res> {
  factory $PajakKendaraanCopyWith(
          PajakKendaraan value, $Res Function(PajakKendaraan) then) =
      _$PajakKendaraanCopyWithImpl<$Res, PajakKendaraan>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Identitas_kendaraan")
      IdentitasKendaraan identitasKendaraan,
      @JsonKey(name: "Penul_tahunan") PenulTahunan penulTahunan,
      @JsonKey(name: "Penul_5_tahunan") Penul5Tahunan penul5Tahunan,
      @JsonKey(name: "UpdatedAt") String updatedAt,
      @JsonKey(name: "CreatedAt") String createdAt});

  $IdentitasKendaraanCopyWith<$Res> get identitasKendaraan;
  $PenulTahunanCopyWith<$Res> get penulTahunan;
  $Penul5TahunanCopyWith<$Res> get penul5Tahunan;
}

/// @nodoc
class _$PajakKendaraanCopyWithImpl<$Res, $Val extends PajakKendaraan>
    implements $PajakKendaraanCopyWith<$Res> {
  _$PajakKendaraanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identitasKendaraan = null,
    Object? penulTahunan = null,
    Object? penul5Tahunan = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identitasKendaraan: null == identitasKendaraan
          ? _value.identitasKendaraan
          : identitasKendaraan // ignore: cast_nullable_to_non_nullable
              as IdentitasKendaraan,
      penulTahunan: null == penulTahunan
          ? _value.penulTahunan
          : penulTahunan // ignore: cast_nullable_to_non_nullable
              as PenulTahunan,
      penul5Tahunan: null == penul5Tahunan
          ? _value.penul5Tahunan
          : penul5Tahunan // ignore: cast_nullable_to_non_nullable
              as Penul5Tahunan,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentitasKendaraanCopyWith<$Res> get identitasKendaraan {
    return $IdentitasKendaraanCopyWith<$Res>(_value.identitasKendaraan,
        (value) {
      return _then(_value.copyWith(identitasKendaraan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PenulTahunanCopyWith<$Res> get penulTahunan {
    return $PenulTahunanCopyWith<$Res>(_value.penulTahunan, (value) {
      return _then(_value.copyWith(penulTahunan: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $Penul5TahunanCopyWith<$Res> get penul5Tahunan {
    return $Penul5TahunanCopyWith<$Res>(_value.penul5Tahunan, (value) {
      return _then(_value.copyWith(penul5Tahunan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PajakKendaraanImplCopyWith<$Res>
    implements $PajakKendaraanCopyWith<$Res> {
  factory _$$PajakKendaraanImplCopyWith(_$PajakKendaraanImpl value,
          $Res Function(_$PajakKendaraanImpl) then) =
      __$$PajakKendaraanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Identitas_kendaraan")
      IdentitasKendaraan identitasKendaraan,
      @JsonKey(name: "Penul_tahunan") PenulTahunan penulTahunan,
      @JsonKey(name: "Penul_5_tahunan") Penul5Tahunan penul5Tahunan,
      @JsonKey(name: "UpdatedAt") String updatedAt,
      @JsonKey(name: "CreatedAt") String createdAt});

  @override
  $IdentitasKendaraanCopyWith<$Res> get identitasKendaraan;
  @override
  $PenulTahunanCopyWith<$Res> get penulTahunan;
  @override
  $Penul5TahunanCopyWith<$Res> get penul5Tahunan;
}

/// @nodoc
class __$$PajakKendaraanImplCopyWithImpl<$Res>
    extends _$PajakKendaraanCopyWithImpl<$Res, _$PajakKendaraanImpl>
    implements _$$PajakKendaraanImplCopyWith<$Res> {
  __$$PajakKendaraanImplCopyWithImpl(
      _$PajakKendaraanImpl _value, $Res Function(_$PajakKendaraanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? identitasKendaraan = null,
    Object? penulTahunan = null,
    Object? penul5Tahunan = null,
    Object? updatedAt = null,
    Object? createdAt = null,
  }) {
    return _then(_$PajakKendaraanImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      identitasKendaraan: null == identitasKendaraan
          ? _value.identitasKendaraan
          : identitasKendaraan // ignore: cast_nullable_to_non_nullable
              as IdentitasKendaraan,
      penulTahunan: null == penulTahunan
          ? _value.penulTahunan
          : penulTahunan // ignore: cast_nullable_to_non_nullable
              as PenulTahunan,
      penul5Tahunan: null == penul5Tahunan
          ? _value.penul5Tahunan
          : penul5Tahunan // ignore: cast_nullable_to_non_nullable
              as Penul5Tahunan,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PajakKendaraanImpl implements _PajakKendaraan {
  const _$PajakKendaraanImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Identitas_kendaraan") required this.identitasKendaraan,
      @JsonKey(name: "Penul_tahunan") required this.penulTahunan,
      @JsonKey(name: "Penul_5_tahunan") required this.penul5Tahunan,
      @JsonKey(name: "UpdatedAt") required this.updatedAt,
      @JsonKey(name: "CreatedAt") required this.createdAt});

  factory _$PajakKendaraanImpl.fromJson(Map<String, dynamic> json) =>
      _$$PajakKendaraanImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Identitas_kendaraan")
  final IdentitasKendaraan identitasKendaraan;
  @override
  @JsonKey(name: "Penul_tahunan")
  final PenulTahunan penulTahunan;
  @override
  @JsonKey(name: "Penul_5_tahunan")
  final Penul5Tahunan penul5Tahunan;
  @override
  @JsonKey(name: "UpdatedAt")
  final String updatedAt;
  @override
  @JsonKey(name: "CreatedAt")
  final String createdAt;

  @override
  String toString() {
    return 'PajakKendaraan(id: $id, identitasKendaraan: $identitasKendaraan, penulTahunan: $penulTahunan, penul5Tahunan: $penul5Tahunan, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PajakKendaraanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.identitasKendaraan, identitasKendaraan) ||
                other.identitasKendaraan == identitasKendaraan) &&
            (identical(other.penulTahunan, penulTahunan) ||
                other.penulTahunan == penulTahunan) &&
            (identical(other.penul5Tahunan, penul5Tahunan) ||
                other.penul5Tahunan == penul5Tahunan) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, identitasKendaraan,
      penulTahunan, penul5Tahunan, updatedAt, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PajakKendaraanImplCopyWith<_$PajakKendaraanImpl> get copyWith =>
      __$$PajakKendaraanImplCopyWithImpl<_$PajakKendaraanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PajakKendaraanImplToJson(
      this,
    );
  }
}

abstract class _PajakKendaraan implements PajakKendaraan {
  const factory _PajakKendaraan(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "Identitas_kendaraan")
      required final IdentitasKendaraan identitasKendaraan,
      @JsonKey(name: "Penul_tahunan") required final PenulTahunan penulTahunan,
      @JsonKey(name: "Penul_5_tahunan")
      required final Penul5Tahunan penul5Tahunan,
      @JsonKey(name: "UpdatedAt") required final String updatedAt,
      @JsonKey(name: "CreatedAt")
      required final String createdAt}) = _$PajakKendaraanImpl;

  factory _PajakKendaraan.fromJson(Map<String, dynamic> json) =
      _$PajakKendaraanImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Identitas_kendaraan")
  IdentitasKendaraan get identitasKendaraan;
  @override
  @JsonKey(name: "Penul_tahunan")
  PenulTahunan get penulTahunan;
  @override
  @JsonKey(name: "Penul_5_tahunan")
  Penul5Tahunan get penul5Tahunan;
  @override
  @JsonKey(name: "UpdatedAt")
  String get updatedAt;
  @override
  @JsonKey(name: "CreatedAt")
  String get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$PajakKendaraanImplCopyWith<_$PajakKendaraanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

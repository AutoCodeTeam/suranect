// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_request_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaporanUpdateRequest {
  int get id => throw _privateConstructorUsedError;
  String? get lokasi => throw _privateConstructorUsedError;
  String? get lokasiSpesifik => throw _privateConstructorUsedError;
  String? get permasalahan => throw _privateConstructorUsedError;
  String? get kategori => throw _privateConstructorUsedError;
  MultipartFile? get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporanUpdateRequestCopyWith<LaporanUpdateRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanUpdateRequestCopyWith<$Res> {
  factory $LaporanUpdateRequestCopyWith(LaporanUpdateRequest value,
          $Res Function(LaporanUpdateRequest) then) =
      _$LaporanUpdateRequestCopyWithImpl<$Res, LaporanUpdateRequest>;
  @useResult
  $Res call(
      {int id,
      String? lokasi,
      String? lokasiSpesifik,
      String? permasalahan,
      String? kategori,
      MultipartFile? photo});
}

/// @nodoc
class _$LaporanUpdateRequestCopyWithImpl<$Res,
        $Val extends LaporanUpdateRequest>
    implements $LaporanUpdateRequestCopyWith<$Res> {
  _$LaporanUpdateRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lokasi = freezed,
    Object? lokasiSpesifik = freezed,
    Object? permasalahan = freezed,
    Object? kategori = freezed,
    Object? photo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      lokasiSpesifik: freezed == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String?,
      permasalahan: freezed == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MultipartFile?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanUpdateRequestImplCopyWith<$Res>
    implements $LaporanUpdateRequestCopyWith<$Res> {
  factory _$$LaporanUpdateRequestImplCopyWith(_$LaporanUpdateRequestImpl value,
          $Res Function(_$LaporanUpdateRequestImpl) then) =
      __$$LaporanUpdateRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? lokasi,
      String? lokasiSpesifik,
      String? permasalahan,
      String? kategori,
      MultipartFile? photo});
}

/// @nodoc
class __$$LaporanUpdateRequestImplCopyWithImpl<$Res>
    extends _$LaporanUpdateRequestCopyWithImpl<$Res, _$LaporanUpdateRequestImpl>
    implements _$$LaporanUpdateRequestImplCopyWith<$Res> {
  __$$LaporanUpdateRequestImplCopyWithImpl(_$LaporanUpdateRequestImpl _value,
      $Res Function(_$LaporanUpdateRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? lokasi = freezed,
    Object? lokasiSpesifik = freezed,
    Object? permasalahan = freezed,
    Object? kategori = freezed,
    Object? photo = freezed,
  }) {
    return _then(_$LaporanUpdateRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      lokasi: freezed == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String?,
      lokasiSpesifik: freezed == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String?,
      permasalahan: freezed == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: freezed == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MultipartFile?,
    ));
  }
}

/// @nodoc

class _$LaporanUpdateRequestImpl implements _LaporanUpdateRequest {
  const _$LaporanUpdateRequestImpl(
      {required this.id,
      this.lokasi = null,
      this.lokasiSpesifik = null,
      this.permasalahan = null,
      this.kategori = null,
      this.photo = null});

  @override
  final int id;
  @override
  @JsonKey()
  final String? lokasi;
  @override
  @JsonKey()
  final String? lokasiSpesifik;
  @override
  @JsonKey()
  final String? permasalahan;
  @override
  @JsonKey()
  final String? kategori;
  @override
  @JsonKey()
  final MultipartFile? photo;

  @override
  String toString() {
    return 'LaporanUpdateRequest(id: $id, lokasi: $lokasi, lokasiSpesifik: $lokasiSpesifik, permasalahan: $permasalahan, kategori: $kategori, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanUpdateRequestImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.lokasiSpesifik, lokasiSpesifik) ||
                other.lokasiSpesifik == lokasiSpesifik) &&
            (identical(other.permasalahan, permasalahan) ||
                other.permasalahan == permasalahan) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, lokasi, lokasiSpesifik, permasalahan, kategori, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanUpdateRequestImplCopyWith<_$LaporanUpdateRequestImpl>
      get copyWith =>
          __$$LaporanUpdateRequestImplCopyWithImpl<_$LaporanUpdateRequestImpl>(
              this, _$identity);
}

abstract class _LaporanUpdateRequest implements LaporanUpdateRequest {
  const factory _LaporanUpdateRequest(
      {required final int id,
      final String? lokasi,
      final String? lokasiSpesifik,
      final String? permasalahan,
      final String? kategori,
      final MultipartFile? photo}) = _$LaporanUpdateRequestImpl;

  @override
  int get id;
  @override
  String? get lokasi;
  @override
  String? get lokasiSpesifik;
  @override
  String? get permasalahan;
  @override
  String? get kategori;
  @override
  MultipartFile? get photo;
  @override
  @JsonKey(ignore: true)
  _$$LaporanUpdateRequestImplCopyWith<_$LaporanUpdateRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

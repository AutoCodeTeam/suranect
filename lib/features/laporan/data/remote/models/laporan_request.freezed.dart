// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaporanRequest {
  String get permasalahan => throw _privateConstructorUsedError;
  String get lokasi => throw _privateConstructorUsedError;
  String? get lokasiSpesifik => throw _privateConstructorUsedError;
  String get kategori => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  MultipartFile get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporanRequestCopyWith<LaporanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanRequestCopyWith<$Res> {
  factory $LaporanRequestCopyWith(
          LaporanRequest value, $Res Function(LaporanRequest) then) =
      _$LaporanRequestCopyWithImpl<$Res, LaporanRequest>;
  @useResult
  $Res call(
      {String permasalahan,
      String lokasi,
      String? lokasiSpesifik,
      String kategori,
      String? status,
      MultipartFile photo});
}

/// @nodoc
class _$LaporanRequestCopyWithImpl<$Res, $Val extends LaporanRequest>
    implements $LaporanRequestCopyWith<$Res> {
  _$LaporanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permasalahan = null,
    Object? lokasi = null,
    Object? lokasiSpesifik = freezed,
    Object? kategori = null,
    Object? status = freezed,
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      permasalahan: null == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiSpesifik: freezed == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MultipartFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanRequestImplCopyWith<$Res>
    implements $LaporanRequestCopyWith<$Res> {
  factory _$$LaporanRequestImplCopyWith(_$LaporanRequestImpl value,
          $Res Function(_$LaporanRequestImpl) then) =
      __$$LaporanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String permasalahan,
      String lokasi,
      String? lokasiSpesifik,
      String kategori,
      String? status,
      MultipartFile photo});
}

/// @nodoc
class __$$LaporanRequestImplCopyWithImpl<$Res>
    extends _$LaporanRequestCopyWithImpl<$Res, _$LaporanRequestImpl>
    implements _$$LaporanRequestImplCopyWith<$Res> {
  __$$LaporanRequestImplCopyWithImpl(
      _$LaporanRequestImpl _value, $Res Function(_$LaporanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? permasalahan = null,
    Object? lokasi = null,
    Object? lokasiSpesifik = freezed,
    Object? kategori = null,
    Object? status = freezed,
    Object? photo = null,
  }) {
    return _then(_$LaporanRequestImpl(
      permasalahan: null == permasalahan
          ? _value.permasalahan
          : permasalahan // ignore: cast_nullable_to_non_nullable
              as String,
      lokasi: null == lokasi
          ? _value.lokasi
          : lokasi // ignore: cast_nullable_to_non_nullable
              as String,
      lokasiSpesifik: freezed == lokasiSpesifik
          ? _value.lokasiSpesifik
          : lokasiSpesifik // ignore: cast_nullable_to_non_nullable
              as String?,
      kategori: null == kategori
          ? _value.kategori
          : kategori // ignore: cast_nullable_to_non_nullable
              as String,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as MultipartFile,
    ));
  }
}

/// @nodoc

class _$LaporanRequestImpl implements _LaporanRequest {
  const _$LaporanRequestImpl(
      {required this.permasalahan,
      required this.lokasi,
      this.lokasiSpesifik,
      required this.kategori,
      this.status,
      required this.photo});

  @override
  final String permasalahan;
  @override
  final String lokasi;
  @override
  final String? lokasiSpesifik;
  @override
  final String kategori;
  @override
  final String? status;
  @override
  final MultipartFile photo;

  @override
  String toString() {
    return 'LaporanRequest(permasalahan: $permasalahan, lokasi: $lokasi, lokasiSpesifik: $lokasiSpesifik, kategori: $kategori, status: $status, photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanRequestImpl &&
            (identical(other.permasalahan, permasalahan) ||
                other.permasalahan == permasalahan) &&
            (identical(other.lokasi, lokasi) || other.lokasi == lokasi) &&
            (identical(other.lokasiSpesifik, lokasiSpesifik) ||
                other.lokasiSpesifik == lokasiSpesifik) &&
            (identical(other.kategori, kategori) ||
                other.kategori == kategori) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, permasalahan, lokasi,
      lokasiSpesifik, kategori, status, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanRequestImplCopyWith<_$LaporanRequestImpl> get copyWith =>
      __$$LaporanRequestImplCopyWithImpl<_$LaporanRequestImpl>(
          this, _$identity);
}

abstract class _LaporanRequest implements LaporanRequest {
  const factory _LaporanRequest(
      {required final String permasalahan,
      required final String lokasi,
      final String? lokasiSpesifik,
      required final String kategori,
      final String? status,
      required final MultipartFile photo}) = _$LaporanRequestImpl;

  @override
  String get permasalahan;
  @override
  String get lokasi;
  @override
  String? get lokasiSpesifik;
  @override
  String get kategori;
  @override
  String? get status;
  @override
  MultipartFile get photo;
  @override
  @JsonKey(ignore: true)
  _$$LaporanRequestImplCopyWith<_$LaporanRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

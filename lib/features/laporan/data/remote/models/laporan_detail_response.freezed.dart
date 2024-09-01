// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LaporanDetailResponse _$LaporanDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _LaporanDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$LaporanDetailResponse {
  @JsonKey(name: "Data")
  Laporan get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LaporanDetailResponseCopyWith<LaporanDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanDetailResponseCopyWith<$Res> {
  factory $LaporanDetailResponseCopyWith(LaporanDetailResponse value,
          $Res Function(LaporanDetailResponse) then) =
      _$LaporanDetailResponseCopyWithImpl<$Res, LaporanDetailResponse>;
  @useResult
  $Res call({@JsonKey(name: "Data") Laporan data});

  $LaporanCopyWith<$Res> get data;
}

/// @nodoc
class _$LaporanDetailResponseCopyWithImpl<$Res,
        $Val extends LaporanDetailResponse>
    implements $LaporanDetailResponseCopyWith<$Res> {
  _$LaporanDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Laporan,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LaporanCopyWith<$Res> get data {
    return $LaporanCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LaporanDetailResponseImplCopyWith<$Res>
    implements $LaporanDetailResponseCopyWith<$Res> {
  factory _$$LaporanDetailResponseImplCopyWith(
          _$LaporanDetailResponseImpl value,
          $Res Function(_$LaporanDetailResponseImpl) then) =
      __$$LaporanDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "Data") Laporan data});

  @override
  $LaporanCopyWith<$Res> get data;
}

/// @nodoc
class __$$LaporanDetailResponseImplCopyWithImpl<$Res>
    extends _$LaporanDetailResponseCopyWithImpl<$Res,
        _$LaporanDetailResponseImpl>
    implements _$$LaporanDetailResponseImplCopyWith<$Res> {
  __$$LaporanDetailResponseImplCopyWithImpl(_$LaporanDetailResponseImpl _value,
      $Res Function(_$LaporanDetailResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LaporanDetailResponseImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Laporan,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LaporanDetailResponseImpl implements _LaporanDetailResponse {
  const _$LaporanDetailResponseImpl(
      {@JsonKey(name: "Data") required this.data});

  factory _$LaporanDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LaporanDetailResponseImplFromJson(json);

  @override
  @JsonKey(name: "Data")
  final Laporan data;

  @override
  String toString() {
    return 'LaporanDetailResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanDetailResponseImplCopyWith<_$LaporanDetailResponseImpl>
      get copyWith => __$$LaporanDetailResponseImplCopyWithImpl<
          _$LaporanDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LaporanDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _LaporanDetailResponse implements LaporanDetailResponse {
  const factory _LaporanDetailResponse(
          {@JsonKey(name: "Data") required final Laporan data}) =
      _$LaporanDetailResponseImpl;

  factory _LaporanDetailResponse.fromJson(Map<String, dynamic> json) =
      _$LaporanDetailResponseImpl.fromJson;

  @override
  @JsonKey(name: "Data")
  Laporan get data;
  @override
  @JsonKey(ignore: true)
  _$$LaporanDetailResponseImplCopyWith<_$LaporanDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

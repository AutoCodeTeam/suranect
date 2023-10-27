// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pajak_kendaraan_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PajakKendaraanRequest _$PajakKendaraanRequestFromJson(
    Map<String, dynamic> json) {
  return _PajakKendaraanRequest.fromJson(json);
}

/// @nodoc
mixin _$PajakKendaraanRequest {
  String get nopol => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PajakKendaraanRequestCopyWith<PajakKendaraanRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PajakKendaraanRequestCopyWith<$Res> {
  factory $PajakKendaraanRequestCopyWith(PajakKendaraanRequest value,
          $Res Function(PajakKendaraanRequest) then) =
      _$PajakKendaraanRequestCopyWithImpl<$Res, PajakKendaraanRequest>;
  @useResult
  $Res call({String nopol});
}

/// @nodoc
class _$PajakKendaraanRequestCopyWithImpl<$Res,
        $Val extends PajakKendaraanRequest>
    implements $PajakKendaraanRequestCopyWith<$Res> {
  _$PajakKendaraanRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nopol = null,
  }) {
    return _then(_value.copyWith(
      nopol: null == nopol
          ? _value.nopol
          : nopol // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PajakKendaraanRequestImplCopyWith<$Res>
    implements $PajakKendaraanRequestCopyWith<$Res> {
  factory _$$PajakKendaraanRequestImplCopyWith(
          _$PajakKendaraanRequestImpl value,
          $Res Function(_$PajakKendaraanRequestImpl) then) =
      __$$PajakKendaraanRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nopol});
}

/// @nodoc
class __$$PajakKendaraanRequestImplCopyWithImpl<$Res>
    extends _$PajakKendaraanRequestCopyWithImpl<$Res,
        _$PajakKendaraanRequestImpl>
    implements _$$PajakKendaraanRequestImplCopyWith<$Res> {
  __$$PajakKendaraanRequestImplCopyWithImpl(_$PajakKendaraanRequestImpl _value,
      $Res Function(_$PajakKendaraanRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nopol = null,
  }) {
    return _then(_$PajakKendaraanRequestImpl(
      nopol: null == nopol
          ? _value.nopol
          : nopol // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PajakKendaraanRequestImpl implements _PajakKendaraanRequest {
  const _$PajakKendaraanRequestImpl({required this.nopol});

  factory _$PajakKendaraanRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PajakKendaraanRequestImplFromJson(json);

  @override
  final String nopol;

  @override
  String toString() {
    return 'PajakKendaraanRequest(nopol: $nopol)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PajakKendaraanRequestImpl &&
            (identical(other.nopol, nopol) || other.nopol == nopol));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nopol);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PajakKendaraanRequestImplCopyWith<_$PajakKendaraanRequestImpl>
      get copyWith => __$$PajakKendaraanRequestImplCopyWithImpl<
          _$PajakKendaraanRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PajakKendaraanRequestImplToJson(
      this,
    );
  }
}

abstract class _PajakKendaraanRequest implements PajakKendaraanRequest {
  const factory _PajakKendaraanRequest({required final String nopol}) =
      _$PajakKendaraanRequestImpl;

  factory _PajakKendaraanRequest.fromJson(Map<String, dynamic> json) =
      _$PajakKendaraanRequestImpl.fromJson;

  @override
  String get nopol;
  @override
  @JsonKey(ignore: true)
  _$$PajakKendaraanRequestImplCopyWith<_$PajakKendaraanRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

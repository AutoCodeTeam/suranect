// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_detail_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaporanDetailRequest {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporanDetailRequestCopyWith<LaporanDetailRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanDetailRequestCopyWith<$Res> {
  factory $LaporanDetailRequestCopyWith(LaporanDetailRequest value,
          $Res Function(LaporanDetailRequest) then) =
      _$LaporanDetailRequestCopyWithImpl<$Res, LaporanDetailRequest>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$LaporanDetailRequestCopyWithImpl<$Res,
        $Val extends LaporanDetailRequest>
    implements $LaporanDetailRequestCopyWith<$Res> {
  _$LaporanDetailRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LaporanDetailRequestImplCopyWith<$Res>
    implements $LaporanDetailRequestCopyWith<$Res> {
  factory _$$LaporanDetailRequestImplCopyWith(_$LaporanDetailRequestImpl value,
          $Res Function(_$LaporanDetailRequestImpl) then) =
      __$$LaporanDetailRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$LaporanDetailRequestImplCopyWithImpl<$Res>
    extends _$LaporanDetailRequestCopyWithImpl<$Res, _$LaporanDetailRequestImpl>
    implements _$$LaporanDetailRequestImplCopyWith<$Res> {
  __$$LaporanDetailRequestImplCopyWithImpl(_$LaporanDetailRequestImpl _value,
      $Res Function(_$LaporanDetailRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LaporanDetailRequestImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$LaporanDetailRequestImpl implements _LaporanDetailRequest {
  const _$LaporanDetailRequestImpl({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'LaporanDetailRequest(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LaporanDetailRequestImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LaporanDetailRequestImplCopyWith<_$LaporanDetailRequestImpl>
      get copyWith =>
          __$$LaporanDetailRequestImplCopyWithImpl<_$LaporanDetailRequestImpl>(
              this, _$identity);
}

abstract class _LaporanDetailRequest implements LaporanDetailRequest {
  const factory _LaporanDetailRequest({required final int id}) =
      _$LaporanDetailRequestImpl;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$LaporanDetailRequestImplCopyWith<_$LaporanDetailRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}

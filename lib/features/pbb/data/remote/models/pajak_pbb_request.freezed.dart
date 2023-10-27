// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pajak_pbb_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PajakPbbRequest _$PajakPbbRequestFromJson(Map<String, dynamic> json) {
  return _PajakPbbRequest.fromJson(json);
}

/// @nodoc
mixin _$PajakPbbRequest {
  String get nop => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PajakPbbRequestCopyWith<PajakPbbRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PajakPbbRequestCopyWith<$Res> {
  factory $PajakPbbRequestCopyWith(
          PajakPbbRequest value, $Res Function(PajakPbbRequest) then) =
      _$PajakPbbRequestCopyWithImpl<$Res, PajakPbbRequest>;
  @useResult
  $Res call({String nop});
}

/// @nodoc
class _$PajakPbbRequestCopyWithImpl<$Res, $Val extends PajakPbbRequest>
    implements $PajakPbbRequestCopyWith<$Res> {
  _$PajakPbbRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nop = null,
  }) {
    return _then(_value.copyWith(
      nop: null == nop
          ? _value.nop
          : nop // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PajakPbbRequestImplCopyWith<$Res>
    implements $PajakPbbRequestCopyWith<$Res> {
  factory _$$PajakPbbRequestImplCopyWith(_$PajakPbbRequestImpl value,
          $Res Function(_$PajakPbbRequestImpl) then) =
      __$$PajakPbbRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nop});
}

/// @nodoc
class __$$PajakPbbRequestImplCopyWithImpl<$Res>
    extends _$PajakPbbRequestCopyWithImpl<$Res, _$PajakPbbRequestImpl>
    implements _$$PajakPbbRequestImplCopyWith<$Res> {
  __$$PajakPbbRequestImplCopyWithImpl(
      _$PajakPbbRequestImpl _value, $Res Function(_$PajakPbbRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nop = null,
  }) {
    return _then(_$PajakPbbRequestImpl(
      nop: null == nop
          ? _value.nop
          : nop // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PajakPbbRequestImpl implements _PajakPbbRequest {
  const _$PajakPbbRequestImpl({required this.nop});

  factory _$PajakPbbRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$PajakPbbRequestImplFromJson(json);

  @override
  final String nop;

  @override
  String toString() {
    return 'PajakPbbRequest(nop: $nop)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PajakPbbRequestImpl &&
            (identical(other.nop, nop) || other.nop == nop));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nop);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PajakPbbRequestImplCopyWith<_$PajakPbbRequestImpl> get copyWith =>
      __$$PajakPbbRequestImplCopyWithImpl<_$PajakPbbRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PajakPbbRequestImplToJson(
      this,
    );
  }
}

abstract class _PajakPbbRequest implements PajakPbbRequest {
  const factory _PajakPbbRequest({required final String nop}) =
      _$PajakPbbRequestImpl;

  factory _PajakPbbRequest.fromJson(Map<String, dynamic> json) =
      _$PajakPbbRequestImpl.fromJson;

  @override
  String get nop;
  @override
  @JsonKey(ignore: true)
  _$$PajakPbbRequestImplCopyWith<_$PajakPbbRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

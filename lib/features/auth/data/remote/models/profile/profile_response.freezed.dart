// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileResponse _$ProfileResponseFromJson(Map<String, dynamic> json) {
  return _ProfileResponse.fromJson(json);
}

/// @nodoc
mixin _$ProfileResponse {
  @JsonKey(name: "Data")
  UserEntity get userEntity => throw _privateConstructorUsedError;
  @JsonKey(name: "Message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "Status")
  String get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileResponseCopyWith<ProfileResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileResponseCopyWith<$Res> {
  factory $ProfileResponseCopyWith(
          ProfileResponse value, $Res Function(ProfileResponse) then) =
      _$ProfileResponseCopyWithImpl<$Res, ProfileResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: "Data") UserEntity userEntity,
      @JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});

  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res, $Val extends ProfileResponse>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      userEntity: null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserEntityCopyWith<$Res> get userEntity {
    return $UserEntityCopyWith<$Res>(_value.userEntity, (value) {
      return _then(_value.copyWith(userEntity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileResponseImplCopyWith<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  factory _$$ProfileResponseImplCopyWith(_$ProfileResponseImpl value,
          $Res Function(_$ProfileResponseImpl) then) =
      __$$ProfileResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Data") UserEntity userEntity,
      @JsonKey(name: "Message") String message,
      @JsonKey(name: "Status") String status});

  @override
  $UserEntityCopyWith<$Res> get userEntity;
}

/// @nodoc
class __$$ProfileResponseImplCopyWithImpl<$Res>
    extends _$ProfileResponseCopyWithImpl<$Res, _$ProfileResponseImpl>
    implements _$$ProfileResponseImplCopyWith<$Res> {
  __$$ProfileResponseImplCopyWithImpl(
      _$ProfileResponseImpl _value, $Res Function(_$ProfileResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userEntity = null,
    Object? message = null,
    Object? status = null,
  }) {
    return _then(_$ProfileResponseImpl(
      userEntity: null == userEntity
          ? _value.userEntity
          : userEntity // ignore: cast_nullable_to_non_nullable
              as UserEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
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
class _$ProfileResponseImpl implements _ProfileResponse {
  const _$ProfileResponseImpl(
      {@JsonKey(name: "Data") required this.userEntity,
      @JsonKey(name: "Message") required this.message,
      @JsonKey(name: "Status") required this.status});

  factory _$ProfileResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileResponseImplFromJson(json);

  @override
  @JsonKey(name: "Data")
  final UserEntity userEntity;
  @override
  @JsonKey(name: "Message")
  final String message;
  @override
  @JsonKey(name: "Status")
  final String status;

  @override
  String toString() {
    return 'ProfileResponse(userEntity: $userEntity, message: $message, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileResponseImpl &&
            (identical(other.userEntity, userEntity) ||
                other.userEntity == userEntity) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userEntity, message, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      __$$ProfileResponseImplCopyWithImpl<_$ProfileResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileResponseImplToJson(
      this,
    );
  }
}

abstract class _ProfileResponse implements ProfileResponse {
  const factory _ProfileResponse(
          {@JsonKey(name: "Data") required final UserEntity userEntity,
          @JsonKey(name: "Message") required final String message,
          @JsonKey(name: "Status") required final String status}) =
      _$ProfileResponseImpl;

  factory _ProfileResponse.fromJson(Map<String, dynamic> json) =
      _$ProfileResponseImpl.fromJson;

  @override
  @JsonKey(name: "Data")
  UserEntity get userEntity;
  @override
  @JsonKey(name: "Message")
  String get message;
  @override
  @JsonKey(name: "Status")
  String get status;
  @override
  @JsonKey(ignore: true)
  _$$ProfileResponseImplCopyWith<_$ProfileResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

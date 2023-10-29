// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventResponse _$EventResponseFromJson(Map<String, dynamic> json) {
  return _EventResponse.fromJson(json);
}

/// @nodoc
mixin _$EventResponse {
  @JsonKey(name: 'Message')
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: 'Status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'Data')
  List<Event> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventResponseCopyWith<EventResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventResponseCopyWith<$Res> {
  factory $EventResponseCopyWith(
          EventResponse value, $Res Function(EventResponse) then) =
      _$EventResponseCopyWithImpl<$Res, EventResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Event> data});
}

/// @nodoc
class _$EventResponseCopyWithImpl<$Res, $Val extends EventResponse>
    implements $EventResponseCopyWith<$Res> {
  _$EventResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventResponseImplCopyWith<$Res>
    implements $EventResponseCopyWith<$Res> {
  factory _$$EventResponseImplCopyWith(
          _$EventResponseImpl value, $Res Function(_$EventResponseImpl) then) =
      __$$EventResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Message') String message,
      @JsonKey(name: 'Status') String status,
      @JsonKey(name: 'Data') List<Event> data});
}

/// @nodoc
class __$$EventResponseImplCopyWithImpl<$Res>
    extends _$EventResponseCopyWithImpl<$Res, _$EventResponseImpl>
    implements _$$EventResponseImplCopyWith<$Res> {
  __$$EventResponseImplCopyWithImpl(
      _$EventResponseImpl _value, $Res Function(_$EventResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
    Object? status = null,
    Object? data = null,
  }) {
    return _then(_$EventResponseImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Event>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventResponseImpl implements _EventResponse {
  const _$EventResponseImpl(
      {@JsonKey(name: 'Message') required this.message,
      @JsonKey(name: 'Status') required this.status,
      @JsonKey(name: 'Data') required final List<Event> data})
      : _data = data;

  factory _$EventResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventResponseImplFromJson(json);

  @override
  @JsonKey(name: 'Message')
  final String message;
  @override
  @JsonKey(name: 'Status')
  final String status;
  final List<Event> _data;
  @override
  @JsonKey(name: 'Data')
  List<Event> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'EventResponse(message: $message, status: $status, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventResponseImpl &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, message, status, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      __$$EventResponseImplCopyWithImpl<_$EventResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventResponseImplToJson(
      this,
    );
  }
}

abstract class _EventResponse implements EventResponse {
  const factory _EventResponse(
          {@JsonKey(name: 'Message') required final String message,
          @JsonKey(name: 'Status') required final String status,
          @JsonKey(name: 'Data') required final List<Event> data}) =
      _$EventResponseImpl;

  factory _EventResponse.fromJson(Map<String, dynamic> json) =
      _$EventResponseImpl.fromJson;

  @override
  @JsonKey(name: 'Message')
  String get message;
  @override
  @JsonKey(name: 'Status')
  String get status;
  @override
  @JsonKey(name: 'Data')
  List<Event> get data;
  @override
  @JsonKey(ignore: true)
  _$$EventResponseImplCopyWith<_$EventResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterState {
  Email get email => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;
  RePassword get rePassword => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  Username get name => throw _privateConstructorUsedError;
  RegisterResponse get response => throw _privateConstructorUsedError;
  String get exceptionError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res, RegisterState>;
  @useResult
  $Res call(
      {Email email,
      Password password,
      RePassword rePassword,
      bool isValid,
      FormzSubmissionStatus formStatus,
      Username name,
      RegisterResponse response,
      String exceptionError});

  $RegisterResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res, $Val extends RegisterState>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rePassword = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? name = null,
    Object? response = null,
    Object? exceptionError = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as RePassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterResponse,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterResponseCopyWith<$Res> get response {
    return $RegisterResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Email email,
      Password password,
      RePassword rePassword,
      bool isValid,
      FormzSubmissionStatus formStatus,
      Username name,
      RegisterResponse response,
      String exceptionError});

  @override
  $RegisterResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? rePassword = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? name = null,
    Object? response = null,
    Object? exceptionError = null,
  }) {
    return _then(_$InitialImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as Email,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
      rePassword: null == rePassword
          ? _value.rePassword
          : rePassword // ignore: cast_nullable_to_non_nullable
              as RePassword,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Username,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as RegisterResponse,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {this.email = const Email.pure(),
      this.password = const Password.pure(),
      this.rePassword = const RePassword.pure(),
      this.isValid = false,
      this.formStatus = FormzSubmissionStatus.initial,
      this.name = const Username.pure(),
      this.response = const RegisterResponse(message: "", status: ""),
      this.exceptionError = ''})
      : super._();

  @override
  @JsonKey()
  final Email email;
  @override
  @JsonKey()
  final Password password;
  @override
  @JsonKey()
  final RePassword rePassword;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus formStatus;
  @override
  @JsonKey()
  final Username name;
  @override
  @JsonKey()
  final RegisterResponse response;
  @override
  @JsonKey()
  final String exceptionError;

  @override
  String toString() {
    return 'RegisterState.initial(email: $email, password: $password, rePassword: $rePassword, isValid: $isValid, formStatus: $formStatus, name: $name, response: $response, exceptionError: $exceptionError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.rePassword, rePassword) ||
                other.rePassword == rePassword) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.exceptionError, exceptionError) ||
                other.exceptionError == exceptionError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password, rePassword,
      isValid, formStatus, name, response, exceptionError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)
        initial,
  }) {
    return initial(email, password, rePassword, isValid, formStatus, name,
        response, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)?
        initial,
  }) {
    return initial?.call(email, password, rePassword, isValid, formStatus, name,
        response, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Email email,
            Password password,
            RePassword rePassword,
            bool isValid,
            FormzSubmissionStatus formStatus,
            Username name,
            RegisterResponse response,
            String exceptionError)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(email, password, rePassword, isValid, formStatus, name,
          response, exceptionError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends RegisterState {
  const factory _Initial(
      {final Email email,
      final Password password,
      final RePassword rePassword,
      final bool isValid,
      final FormzSubmissionStatus formStatus,
      final Username name,
      final RegisterResponse response,
      final String exceptionError}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  Email get email;
  @override
  Password get password;
  @override
  RePassword get rePassword;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get formStatus;
  @override
  Username get name;
  @override
  RegisterResponse get response;
  @override
  String get exceptionError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

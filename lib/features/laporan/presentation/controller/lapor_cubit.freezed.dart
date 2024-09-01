// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lapor_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaporState {
  XFile? get image => throw _privateConstructorUsedError;
  TextFieldFormz get location => throw _privateConstructorUsedError;
  String get specific => throw _privateConstructorUsedError;
  TextFieldFormz get category => throw _privateConstructorUsedError;
  TextFieldFormz get description => throw _privateConstructorUsedError;
  bool get isValid => throw _privateConstructorUsedError;
  FormzSubmissionStatus get formStatus => throw _privateConstructorUsedError;
  AddLaporanResponse get response => throw _privateConstructorUsedError;
  String get exceptionError => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)
        process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)?
        process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)?
        process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? process,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? process,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LaporStateCopyWith<LaporState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporStateCopyWith<$Res> {
  factory $LaporStateCopyWith(
          LaporState value, $Res Function(LaporState) then) =
      _$LaporStateCopyWithImpl<$Res, LaporState>;
  @useResult
  $Res call(
      {XFile? image,
      TextFieldFormz location,
      String specific,
      TextFieldFormz category,
      TextFieldFormz description,
      bool isValid,
      FormzSubmissionStatus formStatus,
      AddLaporanResponse response,
      String exceptionError});

  $AddLaporanResponseCopyWith<$Res> get response;
}

/// @nodoc
class _$LaporStateCopyWithImpl<$Res, $Val extends LaporState>
    implements $LaporStateCopyWith<$Res> {
  _$LaporStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? location = null,
    Object? specific = null,
    Object? category = null,
    Object? description = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? response = null,
    Object? exceptionError = null,
  }) {
    return _then(_value.copyWith(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      specific: null == specific
          ? _value.specific
          : specific // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AddLaporanResponse,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddLaporanResponseCopyWith<$Res> get response {
    return $AddLaporanResponseCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $LaporStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {XFile? image,
      TextFieldFormz location,
      String specific,
      TextFieldFormz category,
      TextFieldFormz description,
      bool isValid,
      FormzSubmissionStatus formStatus,
      AddLaporanResponse response,
      String exceptionError});

  @override
  $AddLaporanResponseCopyWith<$Res> get response;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LaporStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = freezed,
    Object? location = null,
    Object? specific = null,
    Object? category = null,
    Object? description = null,
    Object? isValid = null,
    Object? formStatus = null,
    Object? response = null,
    Object? exceptionError = null,
  }) {
    return _then(_$InitialImpl(
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      specific: null == specific
          ? _value.specific
          : specific // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as TextFieldFormz,
      isValid: null == isValid
          ? _value.isValid
          : isValid // ignore: cast_nullable_to_non_nullable
              as bool,
      formStatus: null == formStatus
          ? _value.formStatus
          : formStatus // ignore: cast_nullable_to_non_nullable
              as FormzSubmissionStatus,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as AddLaporanResponse,
      exceptionError: null == exceptionError
          ? _value.exceptionError
          : exceptionError // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.image = null,
      this.location = const TextFieldFormz.pure(),
      this.specific = "",
      this.category = const TextFieldFormz.pure(),
      this.description = const TextFieldFormz.pure(),
      this.isValid = false,
      this.formStatus = FormzSubmissionStatus.initial,
      this.response = const AddLaporanResponse(message: "", status: ""),
      this.exceptionError = ''});

  @override
  @JsonKey()
  final XFile? image;
  @override
  @JsonKey()
  final TextFieldFormz location;
  @override
  @JsonKey()
  final String specific;
  @override
  @JsonKey()
  final TextFieldFormz category;
  @override
  @JsonKey()
  final TextFieldFormz description;
  @override
  @JsonKey()
  final bool isValid;
  @override
  @JsonKey()
  final FormzSubmissionStatus formStatus;
  @override
  @JsonKey()
  final AddLaporanResponse response;
  @override
  @JsonKey()
  final String exceptionError;

  @override
  String toString() {
    return 'LaporState.process(image: $image, location: $location, specific: $specific, category: $category, description: $description, isValid: $isValid, formStatus: $formStatus, response: $response, exceptionError: $exceptionError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.specific, specific) ||
                other.specific == specific) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.isValid, isValid) || other.isValid == isValid) &&
            (identical(other.formStatus, formStatus) ||
                other.formStatus == formStatus) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.exceptionError, exceptionError) ||
                other.exceptionError == exceptionError));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image, location, specific,
      category, description, isValid, formStatus, response, exceptionError);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)
        process,
  }) {
    return process(image, location, specific, category, description, isValid,
        formStatus, response, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)?
        process,
  }) {
    return process?.call(image, location, specific, category, description,
        isValid, formStatus, response, exceptionError);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            XFile? image,
            TextFieldFormz location,
            String specific,
            TextFieldFormz category,
            TextFieldFormz description,
            bool isValid,
            FormzSubmissionStatus formStatus,
            AddLaporanResponse response,
            String exceptionError)?
        process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(image, location, specific, category, description, isValid,
          formStatus, response, exceptionError);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) process,
  }) {
    return process(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? process,
  }) {
    return process?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? process,
    required TResult orElse(),
  }) {
    if (process != null) {
      return process(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LaporState {
  const factory _Initial(
      {final XFile? image,
      final TextFieldFormz location,
      final String specific,
      final TextFieldFormz category,
      final TextFieldFormz description,
      final bool isValid,
      final FormzSubmissionStatus formStatus,
      final AddLaporanResponse response,
      final String exceptionError}) = _$InitialImpl;

  @override
  XFile? get image;
  @override
  TextFieldFormz get location;
  @override
  String get specific;
  @override
  TextFieldFormz get category;
  @override
  TextFieldFormz get description;
  @override
  bool get isValid;
  @override
  FormzSubmissionStatus get formStatus;
  @override
  AddLaporanResponse get response;
  @override
  String get exceptionError;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

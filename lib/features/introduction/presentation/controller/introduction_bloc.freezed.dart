// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'introduction_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$IntroductionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changedPage,
    required TResult Function(bool status) doneIntro,
    required TResult Function() isIntro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedPage,
    TResult? Function(bool status)? doneIntro,
    TResult? Function()? isIntro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedPage,
    TResult Function(bool status)? doneIntro,
    TResult Function()? isIntro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangedPageEvent value) changedPage,
    required TResult Function(DoneIntroEvent value) doneIntro,
    required TResult Function(IsIntroEvent value) isIntro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangedPageEvent value)? changedPage,
    TResult? Function(DoneIntroEvent value)? doneIntro,
    TResult? Function(IsIntroEvent value)? isIntro,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangedPageEvent value)? changedPage,
    TResult Function(DoneIntroEvent value)? doneIntro,
    TResult Function(IsIntroEvent value)? isIntro,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionEventCopyWith<$Res> {
  factory $IntroductionEventCopyWith(
          IntroductionEvent value, $Res Function(IntroductionEvent) then) =
      _$IntroductionEventCopyWithImpl<$Res, IntroductionEvent>;
}

/// @nodoc
class _$IntroductionEventCopyWithImpl<$Res, $Val extends IntroductionEvent>
    implements $IntroductionEventCopyWith<$Res> {
  _$IntroductionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangedPageEventImplCopyWith<$Res> {
  factory _$$ChangedPageEventImplCopyWith(_$ChangedPageEventImpl value,
          $Res Function(_$ChangedPageEventImpl) then) =
      __$$ChangedPageEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangedPageEventImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$ChangedPageEventImpl>
    implements _$$ChangedPageEventImplCopyWith<$Res> {
  __$$ChangedPageEventImplCopyWithImpl(_$ChangedPageEventImpl _value,
      $Res Function(_$ChangedPageEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangedPageEventImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangedPageEventImpl implements ChangedPageEvent {
  const _$ChangedPageEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'IntroductionEvent.changedPage(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangedPageEventImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangedPageEventImplCopyWith<_$ChangedPageEventImpl> get copyWith =>
      __$$ChangedPageEventImplCopyWithImpl<_$ChangedPageEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changedPage,
    required TResult Function(bool status) doneIntro,
    required TResult Function() isIntro,
  }) {
    return changedPage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedPage,
    TResult? Function(bool status)? doneIntro,
    TResult? Function()? isIntro,
  }) {
    return changedPage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedPage,
    TResult Function(bool status)? doneIntro,
    TResult Function()? isIntro,
    required TResult orElse(),
  }) {
    if (changedPage != null) {
      return changedPage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangedPageEvent value) changedPage,
    required TResult Function(DoneIntroEvent value) doneIntro,
    required TResult Function(IsIntroEvent value) isIntro,
  }) {
    return changedPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangedPageEvent value)? changedPage,
    TResult? Function(DoneIntroEvent value)? doneIntro,
    TResult? Function(IsIntroEvent value)? isIntro,
  }) {
    return changedPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangedPageEvent value)? changedPage,
    TResult Function(DoneIntroEvent value)? doneIntro,
    TResult Function(IsIntroEvent value)? isIntro,
    required TResult orElse(),
  }) {
    if (changedPage != null) {
      return changedPage(this);
    }
    return orElse();
  }
}

abstract class ChangedPageEvent implements IntroductionEvent {
  const factory ChangedPageEvent(final int index) = _$ChangedPageEventImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangedPageEventImplCopyWith<_$ChangedPageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DoneIntroEventImplCopyWith<$Res> {
  factory _$$DoneIntroEventImplCopyWith(_$DoneIntroEventImpl value,
          $Res Function(_$DoneIntroEventImpl) then) =
      __$$DoneIntroEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$DoneIntroEventImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$DoneIntroEventImpl>
    implements _$$DoneIntroEventImplCopyWith<$Res> {
  __$$DoneIntroEventImplCopyWithImpl(
      _$DoneIntroEventImpl _value, $Res Function(_$DoneIntroEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$DoneIntroEventImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DoneIntroEventImpl implements DoneIntroEvent {
  const _$DoneIntroEventImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'IntroductionEvent.doneIntro(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DoneIntroEventImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DoneIntroEventImplCopyWith<_$DoneIntroEventImpl> get copyWith =>
      __$$DoneIntroEventImplCopyWithImpl<_$DoneIntroEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changedPage,
    required TResult Function(bool status) doneIntro,
    required TResult Function() isIntro,
  }) {
    return doneIntro(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedPage,
    TResult? Function(bool status)? doneIntro,
    TResult? Function()? isIntro,
  }) {
    return doneIntro?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedPage,
    TResult Function(bool status)? doneIntro,
    TResult Function()? isIntro,
    required TResult orElse(),
  }) {
    if (doneIntro != null) {
      return doneIntro(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangedPageEvent value) changedPage,
    required TResult Function(DoneIntroEvent value) doneIntro,
    required TResult Function(IsIntroEvent value) isIntro,
  }) {
    return doneIntro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangedPageEvent value)? changedPage,
    TResult? Function(DoneIntroEvent value)? doneIntro,
    TResult? Function(IsIntroEvent value)? isIntro,
  }) {
    return doneIntro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangedPageEvent value)? changedPage,
    TResult Function(DoneIntroEvent value)? doneIntro,
    TResult Function(IsIntroEvent value)? isIntro,
    required TResult orElse(),
  }) {
    if (doneIntro != null) {
      return doneIntro(this);
    }
    return orElse();
  }
}

abstract class DoneIntroEvent implements IntroductionEvent {
  const factory DoneIntroEvent(final bool status) = _$DoneIntroEventImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$DoneIntroEventImplCopyWith<_$DoneIntroEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsIntroEventImplCopyWith<$Res> {
  factory _$$IsIntroEventImplCopyWith(
          _$IsIntroEventImpl value, $Res Function(_$IsIntroEventImpl) then) =
      __$$IsIntroEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IsIntroEventImplCopyWithImpl<$Res>
    extends _$IntroductionEventCopyWithImpl<$Res, _$IsIntroEventImpl>
    implements _$$IsIntroEventImplCopyWith<$Res> {
  __$$IsIntroEventImplCopyWithImpl(
      _$IsIntroEventImpl _value, $Res Function(_$IsIntroEventImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$IsIntroEventImpl implements IsIntroEvent {
  const _$IsIntroEventImpl();

  @override
  String toString() {
    return 'IntroductionEvent.isIntro()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IsIntroEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changedPage,
    required TResult Function(bool status) doneIntro,
    required TResult Function() isIntro,
  }) {
    return isIntro();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedPage,
    TResult? Function(bool status)? doneIntro,
    TResult? Function()? isIntro,
  }) {
    return isIntro?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedPage,
    TResult Function(bool status)? doneIntro,
    TResult Function()? isIntro,
    required TResult orElse(),
  }) {
    if (isIntro != null) {
      return isIntro();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangedPageEvent value) changedPage,
    required TResult Function(DoneIntroEvent value) doneIntro,
    required TResult Function(IsIntroEvent value) isIntro,
  }) {
    return isIntro(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangedPageEvent value)? changedPage,
    TResult? Function(DoneIntroEvent value)? doneIntro,
    TResult? Function(IsIntroEvent value)? isIntro,
  }) {
    return isIntro?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangedPageEvent value)? changedPage,
    TResult Function(DoneIntroEvent value)? doneIntro,
    TResult Function(IsIntroEvent value)? isIntro,
    required TResult orElse(),
  }) {
    if (isIntro != null) {
      return isIntro(this);
    }
    return orElse();
  }
}

abstract class IsIntroEvent implements IntroductionEvent {
  const factory IsIntroEvent() = _$IsIntroEventImpl;
}

/// @nodoc
mixin _$IntroductionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) changePage,
    required TResult Function(bool status) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? changePage,
    TResult? Function(bool status)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? changePage,
    TResult Function(bool status)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_Success value) success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_Success value)? success,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IntroductionStateCopyWith<$Res> {
  factory $IntroductionStateCopyWith(
          IntroductionState value, $Res Function(IntroductionState) then) =
      _$IntroductionStateCopyWithImpl<$Res, IntroductionState>;
}

/// @nodoc
class _$IntroductionStateCopyWithImpl<$Res, $Val extends IntroductionState>
    implements $IntroductionStateCopyWith<$Res> {
  _$IntroductionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int pageIndex});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageIndex = null,
  }) {
    return _then(_$ChangePageImpl(
      null == pageIndex
          ? _value.pageIndex
          : pageIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements _ChangePage {
  const _$ChangePageImpl(this.pageIndex);

  @override
  final int pageIndex;

  @override
  String toString() {
    return 'IntroductionState.changePage(pageIndex: $pageIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.pageIndex, pageIndex) ||
                other.pageIndex == pageIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, pageIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) changePage,
    required TResult Function(bool status) success,
  }) {
    return changePage(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? changePage,
    TResult? Function(bool status)? success,
  }) {
    return changePage?.call(pageIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? changePage,
    TResult Function(bool status)? success,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(pageIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_Success value) success,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_Success value)? success,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements IntroductionState {
  const factory _ChangePage(final int pageIndex) = _$ChangePageImpl;

  int get pageIndex;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool status});
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$IntroductionStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$SuccessImpl(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.status);

  @override
  final bool status;

  @override
  String toString() {
    return 'IntroductionState.success(status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int pageIndex) changePage,
    required TResult Function(bool status) success,
  }) {
    return success(status);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int pageIndex)? changePage,
    TResult? Function(bool status)? success,
  }) {
    return success?.call(status);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int pageIndex)? changePage,
    TResult Function(bool status)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(status);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_Success value) success,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_Success value)? success,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_Success value)? success,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }

  @override
  // TODO: implement pageIndex
  int get pageIndex => throw UnimplementedError();
}

abstract class _Success implements IntroductionState {
  const factory _Success(final bool status) = _$SuccessImpl;

  bool get status;
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

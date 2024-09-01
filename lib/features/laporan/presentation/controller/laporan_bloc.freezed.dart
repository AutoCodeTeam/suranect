// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'laporan_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LaporanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LaporanDetailRequest request) showDetail,
    required TResult Function(LaporanDetailRequest request) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LaporanDetailRequest request)? showDetail,
    TResult? Function(LaporanDetailRequest request)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LaporanDetailRequest request)? showDetail,
    TResult Function(LaporanDetailRequest request)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowDetail value) showDetail,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ShowDetail value)? showDetail,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowDetail value)? showDetail,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanEventCopyWith<$Res> {
  factory $LaporanEventCopyWith(
          LaporanEvent value, $Res Function(LaporanEvent) then) =
      _$LaporanEventCopyWithImpl<$Res, LaporanEvent>;
}

/// @nodoc
class _$LaporanEventCopyWithImpl<$Res, $Val extends LaporanEvent>
    implements $LaporanEventCopyWith<$Res> {
  _$LaporanEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$LaporanEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'LaporanEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LaporanDetailRequest request) showDetail,
    required TResult Function(LaporanDetailRequest request) delete,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LaporanDetailRequest request)? showDetail,
    TResult? Function(LaporanDetailRequest request)? delete,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LaporanDetailRequest request)? showDetail,
    TResult Function(LaporanDetailRequest request)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowDetail value) showDetail,
    required TResult Function(_Delete value) delete,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ShowDetail value)? showDetail,
    TResult? Function(_Delete value)? delete,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowDetail value)? showDetail,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements LaporanEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ShowDetailImplCopyWith<$Res> {
  factory _$$ShowDetailImplCopyWith(
          _$ShowDetailImpl value, $Res Function(_$ShowDetailImpl) then) =
      __$$ShowDetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LaporanDetailRequest request});

  $LaporanDetailRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$ShowDetailImplCopyWithImpl<$Res>
    extends _$LaporanEventCopyWithImpl<$Res, _$ShowDetailImpl>
    implements _$$ShowDetailImplCopyWith<$Res> {
  __$$ShowDetailImplCopyWithImpl(
      _$ShowDetailImpl _value, $Res Function(_$ShowDetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$ShowDetailImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LaporanDetailRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LaporanDetailRequestCopyWith<$Res> get request {
    return $LaporanDetailRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$ShowDetailImpl implements _ShowDetail {
  const _$ShowDetailImpl({required this.request});

  @override
  final LaporanDetailRequest request;

  @override
  String toString() {
    return 'LaporanEvent.showDetail(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShowDetailImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ShowDetailImplCopyWith<_$ShowDetailImpl> get copyWith =>
      __$$ShowDetailImplCopyWithImpl<_$ShowDetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LaporanDetailRequest request) showDetail,
    required TResult Function(LaporanDetailRequest request) delete,
  }) {
    return showDetail(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LaporanDetailRequest request)? showDetail,
    TResult? Function(LaporanDetailRequest request)? delete,
  }) {
    return showDetail?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LaporanDetailRequest request)? showDetail,
    TResult Function(LaporanDetailRequest request)? delete,
    required TResult orElse(),
  }) {
    if (showDetail != null) {
      return showDetail(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowDetail value) showDetail,
    required TResult Function(_Delete value) delete,
  }) {
    return showDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ShowDetail value)? showDetail,
    TResult? Function(_Delete value)? delete,
  }) {
    return showDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowDetail value)? showDetail,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (showDetail != null) {
      return showDetail(this);
    }
    return orElse();
  }
}

abstract class _ShowDetail implements LaporanEvent {
  const factory _ShowDetail({required final LaporanDetailRequest request}) =
      _$ShowDetailImpl;

  LaporanDetailRequest get request;
  @JsonKey(ignore: true)
  _$$ShowDetailImplCopyWith<_$ShowDetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteImplCopyWith<$Res> {
  factory _$$DeleteImplCopyWith(
          _$DeleteImpl value, $Res Function(_$DeleteImpl) then) =
      __$$DeleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LaporanDetailRequest request});

  $LaporanDetailRequestCopyWith<$Res> get request;
}

/// @nodoc
class __$$DeleteImplCopyWithImpl<$Res>
    extends _$LaporanEventCopyWithImpl<$Res, _$DeleteImpl>
    implements _$$DeleteImplCopyWith<$Res> {
  __$$DeleteImplCopyWithImpl(
      _$DeleteImpl _value, $Res Function(_$DeleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? request = null,
  }) {
    return _then(_$DeleteImpl(
      request: null == request
          ? _value.request
          : request // ignore: cast_nullable_to_non_nullable
              as LaporanDetailRequest,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LaporanDetailRequestCopyWith<$Res> get request {
    return $LaporanDetailRequestCopyWith<$Res>(_value.request, (value) {
      return _then(_value.copyWith(request: value));
    });
  }
}

/// @nodoc

class _$DeleteImpl implements _Delete {
  const _$DeleteImpl({required this.request});

  @override
  final LaporanDetailRequest request;

  @override
  String toString() {
    return 'LaporanEvent.delete(request: $request)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteImpl &&
            (identical(other.request, request) || other.request == request));
  }

  @override
  int get hashCode => Object.hash(runtimeType, request);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      __$$DeleteImplCopyWithImpl<_$DeleteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(LaporanDetailRequest request) showDetail,
    required TResult Function(LaporanDetailRequest request) delete,
  }) {
    return delete(request);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(LaporanDetailRequest request)? showDetail,
    TResult? Function(LaporanDetailRequest request)? delete,
  }) {
    return delete?.call(request);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(LaporanDetailRequest request)? showDetail,
    TResult Function(LaporanDetailRequest request)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(request);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ShowDetail value) showDetail,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ShowDetail value)? showDetail,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ShowDetail value)? showDetail,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements LaporanEvent {
  const factory _Delete({required final LaporanDetailRequest request}) =
      _$DeleteImpl;

  LaporanDetailRequest get request;
  @JsonKey(ignore: true)
  _$$DeleteImplCopyWith<_$DeleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LaporanState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LaporanStateCopyWith<$Res> {
  factory $LaporanStateCopyWith(
          LaporanState value, $Res Function(LaporanState) then) =
      _$LaporanStateCopyWithImpl<$Res, LaporanState>;
}

/// @nodoc
class _$LaporanStateCopyWithImpl<$Res, $Val extends LaporanState>
    implements $LaporanStateCopyWith<$Res> {
  _$LaporanStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$LaporanStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'LaporanState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements LaporanState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$LaporanStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'LaporanState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements LaporanState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Laporan> laporans});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$LaporanStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laporans = null,
  }) {
    return _then(_$LoadedImpl(
      laporans: null == laporans
          ? _value._laporans
          : laporans // ignore: cast_nullable_to_non_nullable
              as List<Laporan>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl({final List<Laporan> laporans = const <Laporan>[]})
      : _laporans = laporans;

  final List<Laporan> _laporans;
  @override
  @JsonKey()
  List<Laporan> get laporans {
    if (_laporans is EqualUnmodifiableListView) return _laporans;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_laporans);
  }

  @override
  String toString() {
    return 'LaporanState.loaded(laporans: $laporans)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._laporans, _laporans));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_laporans));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) {
    return loaded(laporans);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) {
    return loaded?.call(laporans);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(laporans);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements LaporanState {
  const factory _Loaded({final List<Laporan> laporans}) = _$LoadedImpl;

  List<Laporan> get laporans;
  @JsonKey(ignore: true)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$LaporanStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$FailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({this.error = ""});

  @override
  @JsonKey()
  final String error;

  @override
  String toString() {
    return 'LaporanState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements LaporanState {
  const factory _Failure({final String error}) = _$FailureImpl;

  String get error;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailImplCopyWith<$Res> {
  factory _$$DetailImplCopyWith(
          _$DetailImpl value, $Res Function(_$DetailImpl) then) =
      __$$DetailImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Laporan laporan});

  $LaporanCopyWith<$Res> get laporan;
}

/// @nodoc
class __$$DetailImplCopyWithImpl<$Res>
    extends _$LaporanStateCopyWithImpl<$Res, _$DetailImpl>
    implements _$$DetailImplCopyWith<$Res> {
  __$$DetailImplCopyWithImpl(
      _$DetailImpl _value, $Res Function(_$DetailImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laporan = null,
  }) {
    return _then(_$DetailImpl(
      laporan: null == laporan
          ? _value.laporan
          : laporan // ignore: cast_nullable_to_non_nullable
              as Laporan,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LaporanCopyWith<$Res> get laporan {
    return $LaporanCopyWith<$Res>(_value.laporan, (value) {
      return _then(_value.copyWith(laporan: value));
    });
  }
}

/// @nodoc

class _$DetailImpl implements _Detail {
  const _$DetailImpl({required this.laporan});

  @override
  final Laporan laporan;

  @override
  String toString() {
    return 'LaporanState.detail(laporan: $laporan)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailImpl &&
            (identical(other.laporan, laporan) || other.laporan == laporan));
  }

  @override
  int get hashCode => Object.hash(runtimeType, laporan);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      __$$DetailImplCopyWithImpl<_$DetailImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Laporan> laporans) loaded,
    required TResult Function(String error) failure,
    required TResult Function(Laporan laporan) detail,
  }) {
    return detail(laporan);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Laporan> laporans)? loaded,
    TResult? Function(String error)? failure,
    TResult? Function(Laporan laporan)? detail,
  }) {
    return detail?.call(laporan);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Laporan> laporans)? loaded,
    TResult Function(String error)? failure,
    TResult Function(Laporan laporan)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(laporan);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Failure value) failure,
    required TResult Function(_Detail value) detail,
  }) {
    return detail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Failure value)? failure,
    TResult? Function(_Detail value)? detail,
  }) {
    return detail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Failure value)? failure,
    TResult Function(_Detail value)? detail,
    required TResult orElse(),
  }) {
    if (detail != null) {
      return detail(this);
    }
    return orElse();
  }
}

abstract class _Detail implements LaporanState {
  const factory _Detail({required final Laporan laporan}) = _$DetailImpl;

  Laporan get laporan;
  @JsonKey(ignore: true)
  _$$DetailImplCopyWith<_$DetailImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

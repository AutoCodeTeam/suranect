// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'main_tab_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MainTabEvent {
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedPageEvent value) changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedPageEvent value)? changedTab,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedPageEvent value)? changedTab,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTabEventCopyWith<MainTabEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabEventCopyWith<$Res> {
  factory $MainTabEventCopyWith(
          MainTabEvent value, $Res Function(MainTabEvent) then) =
      _$MainTabEventCopyWithImpl<$Res, MainTabEvent>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class _$MainTabEventCopyWithImpl<$Res, $Val extends MainTabEvent>
    implements $MainTabEventCopyWith<$Res> {
  _$MainTabEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangedPageEventImplCopyWith<$Res>
    implements $MainTabEventCopyWith<$Res> {
  factory _$$ChangedPageEventImplCopyWith(_$ChangedPageEventImpl value,
          $Res Function(_$ChangedPageEventImpl) then) =
      __$$ChangedPageEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangedPageEventImplCopyWithImpl<$Res>
    extends _$MainTabEventCopyWithImpl<$Res, _$ChangedPageEventImpl>
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

class _$ChangedPageEventImpl implements _ChangedPageEvent {
  const _$ChangedPageEventImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'MainTabEvent.changedTab(index: $index)';
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
    required TResult Function(int index) changedTab,
  }) {
    return changedTab(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? changedTab,
  }) {
    return changedTab?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? changedTab,
    required TResult orElse(),
  }) {
    if (changedTab != null) {
      return changedTab(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangedPageEvent value) changedTab,
  }) {
    return changedTab(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangedPageEvent value)? changedTab,
  }) {
    return changedTab?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangedPageEvent value)? changedTab,
    required TResult orElse(),
  }) {
    if (changedTab != null) {
      return changedTab(this);
    }
    return orElse();
  }
}

abstract class _ChangedPageEvent implements MainTabEvent {
  const factory _ChangedPageEvent(final int index) = _$ChangedPageEventImpl;

  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$ChangedPageEventImplCopyWith<_$ChangedPageEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MainTabState {
  int get index => throw _privateConstructorUsedError;
  List<MyCustomBottomNavBarItem> get navbarItem =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, List<MyCustomBottomNavBarItem> navbarItem)
        tabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MyCustomBottomNavBarItem> navbarItem)?
        tabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MyCustomBottomNavBarItem> navbarItem)?
        tabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) tabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? tabIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? tabIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MainTabStateCopyWith<MainTabState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainTabStateCopyWith<$Res> {
  factory $MainTabStateCopyWith(
          MainTabState value, $Res Function(MainTabState) then) =
      _$MainTabStateCopyWithImpl<$Res, MainTabState>;
  @useResult
  $Res call({int index, List<MyCustomBottomNavBarItem> navbarItem});
}

/// @nodoc
class _$MainTabStateCopyWithImpl<$Res, $Val extends MainTabState>
    implements $MainTabStateCopyWith<$Res> {
  _$MainTabStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? navbarItem = null,
  }) {
    return _then(_value.copyWith(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      navbarItem: null == navbarItem
          ? _value.navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as List<MyCustomBottomNavBarItem>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $MainTabStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int index, List<MyCustomBottomNavBarItem> navbarItem});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$MainTabStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
    Object? navbarItem = null,
  }) {
    return _then(_$InitialImpl(
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      navbarItem: null == navbarItem
          ? _value._navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as List<MyCustomBottomNavBarItem>,
    ));
  }
}

/// @nodoc

class _$InitialImpl extends _Initial {
  const _$InitialImpl(
      {required this.index,
      final List<MyCustomBottomNavBarItem> navbarItem = const []})
      : _navbarItem = navbarItem,
        super._();

  @override
  final int index;
  final List<MyCustomBottomNavBarItem> _navbarItem;
  @override
  @JsonKey()
  List<MyCustomBottomNavBarItem> get navbarItem {
    if (_navbarItem is EqualUnmodifiableListView) return _navbarItem;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_navbarItem);
  }

  @override
  String toString() {
    return 'MainTabState.tabIndex(index: $index, navbarItem: $navbarItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.index, index) || other.index == index) &&
            const DeepCollectionEquality()
                .equals(other._navbarItem, _navbarItem));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, index, const DeepCollectionEquality().hash(_navbarItem));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int index, List<MyCustomBottomNavBarItem> navbarItem)
        tabIndex,
  }) {
    return tabIndex(index, navbarItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index, List<MyCustomBottomNavBarItem> navbarItem)?
        tabIndex,
  }) {
    return tabIndex?.call(index, navbarItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, List<MyCustomBottomNavBarItem> navbarItem)?
        tabIndex,
    required TResult orElse(),
  }) {
    if (tabIndex != null) {
      return tabIndex(index, navbarItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) tabIndex,
  }) {
    return tabIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? tabIndex,
  }) {
    return tabIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? tabIndex,
    required TResult orElse(),
  }) {
    if (tabIndex != null) {
      return tabIndex(this);
    }
    return orElse();
  }
}

abstract class _Initial extends MainTabState {
  const factory _Initial(
      {required final int index,
      final List<MyCustomBottomNavBarItem> navbarItem}) = _$InitialImpl;
  const _Initial._() : super._();

  @override
  int get index;
  @override
  List<MyCustomBottomNavBarItem> get navbarItem;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

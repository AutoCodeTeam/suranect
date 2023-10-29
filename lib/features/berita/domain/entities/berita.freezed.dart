// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'berita.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Berita _$BeritaFromJson(Map<String, dynamic> json) {
  return _Berita.fromJson(json);
}

/// @nodoc
mixin _$Berita {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "Text")
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: "Image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "Category")
  String get category => throw _privateConstructorUsedError;
  @JsonKey(name: "CreatedAt")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "UpdatedAt")
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeritaCopyWith<Berita> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeritaCopyWith<$Res> {
  factory $BeritaCopyWith(Berita value, $Res Function(Berita) then) =
      _$BeritaCopyWithImpl<$Res, Berita>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Title") String title,
      @JsonKey(name: "Text") String text,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Category") String category,
      @JsonKey(name: "CreatedAt") String? createdAt,
      @JsonKey(name: "UpdatedAt") String? updatedAt});
}

/// @nodoc
class _$BeritaCopyWithImpl<$Res, $Val extends Berita>
    implements $BeritaCopyWith<$Res> {
  _$BeritaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? image = null,
    Object? category = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BeritaImplCopyWith<$Res> implements $BeritaCopyWith<$Res> {
  factory _$$BeritaImplCopyWith(
          _$BeritaImpl value, $Res Function(_$BeritaImpl) then) =
      __$$BeritaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Title") String title,
      @JsonKey(name: "Text") String text,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Category") String category,
      @JsonKey(name: "CreatedAt") String? createdAt,
      @JsonKey(name: "UpdatedAt") String? updatedAt});
}

/// @nodoc
class __$$BeritaImplCopyWithImpl<$Res>
    extends _$BeritaCopyWithImpl<$Res, _$BeritaImpl>
    implements _$$BeritaImplCopyWith<$Res> {
  __$$BeritaImplCopyWithImpl(
      _$BeritaImpl _value, $Res Function(_$BeritaImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? text = null,
    Object? image = null,
    Object? category = null,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BeritaImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BeritaImpl implements _Berita {
  const _$BeritaImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Title") required this.title,
      @JsonKey(name: "Text") required this.text,
      @JsonKey(name: "Image") required this.image,
      @JsonKey(name: "Category") required this.category,
      @JsonKey(name: "CreatedAt") this.createdAt,
      @JsonKey(name: "UpdatedAt") this.updatedAt});

  factory _$BeritaImpl.fromJson(Map<String, dynamic> json) =>
      _$$BeritaImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Title")
  final String title;
  @override
  @JsonKey(name: "Text")
  final String text;
  @override
  @JsonKey(name: "Image")
  final String image;
  @override
  @JsonKey(name: "Category")
  final String category;
  @override
  @JsonKey(name: "CreatedAt")
  final String? createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  final String? updatedAt;

  @override
  String toString() {
    return 'Berita(id: $id, title: $title, text: $text, image: $image, category: $category, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BeritaImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, text, image, category, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BeritaImplCopyWith<_$BeritaImpl> get copyWith =>
      __$$BeritaImplCopyWithImpl<_$BeritaImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BeritaImplToJson(
      this,
    );
  }
}

abstract class _Berita implements Berita {
  const factory _Berita(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "Title") required final String title,
      @JsonKey(name: "Text") required final String text,
      @JsonKey(name: "Image") required final String image,
      @JsonKey(name: "Category") required final String category,
      @JsonKey(name: "CreatedAt") final String? createdAt,
      @JsonKey(name: "UpdatedAt") final String? updatedAt}) = _$BeritaImpl;

  factory _Berita.fromJson(Map<String, dynamic> json) = _$BeritaImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Title")
  String get title;
  @override
  @JsonKey(name: "Text")
  String get text;
  @override
  @JsonKey(name: "Image")
  String get image;
  @override
  @JsonKey(name: "Category")
  String get category;
  @override
  @JsonKey(name: "CreatedAt")
  String? get createdAt;
  @override
  @JsonKey(name: "UpdatedAt")
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$BeritaImplCopyWith<_$BeritaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

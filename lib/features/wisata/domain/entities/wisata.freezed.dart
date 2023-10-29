// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wisata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Wisata _$WisataFromJson(Map<String, dynamic> json) {
  return _Wisata.fromJson(json);
}

/// @nodoc
mixin _$Wisata {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "Address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "Image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "Rating")
  double get rating => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WisataCopyWith<Wisata> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WisataCopyWith<$Res> {
  factory $WisataCopyWith(Wisata value, $Res Function(Wisata) then) =
      _$WisataCopyWithImpl<$Res, Wisata>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Rating") double rating});
}

/// @nodoc
class _$WisataCopyWithImpl<$Res, $Val extends Wisata>
    implements $WisataCopyWith<$Res> {
  _$WisataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WisataImplCopyWith<$Res> implements $WisataCopyWith<$Res> {
  factory _$$WisataImplCopyWith(
          _$WisataImpl value, $Res Function(_$WisataImpl) then) =
      __$$WisataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Rating") double rating});
}

/// @nodoc
class __$$WisataImplCopyWithImpl<$Res>
    extends _$WisataCopyWithImpl<$Res, _$WisataImpl>
    implements _$$WisataImplCopyWith<$Res> {
  __$$WisataImplCopyWithImpl(
      _$WisataImpl _value, $Res Function(_$WisataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? description = null,
    Object? address = null,
    Object? image = null,
    Object? rating = null,
  }) {
    return _then(_$WisataImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WisataImpl implements _Wisata {
  const _$WisataImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Name") required this.name,
      @JsonKey(name: "Description") required this.description,
      @JsonKey(name: "Address") required this.address,
      @JsonKey(name: "Image") required this.image,
      @JsonKey(name: "Rating") required this.rating});

  factory _$WisataImpl.fromJson(Map<String, dynamic> json) =>
      _$$WisataImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "Description")
  final String description;
  @override
  @JsonKey(name: "Address")
  final String address;
  @override
  @JsonKey(name: "Image")
  final String image;
  @override
  @JsonKey(name: "Rating")
  final double rating;

  @override
  String toString() {
    return 'Wisata(id: $id, name: $name, description: $description, address: $address, image: $image, rating: $rating)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WisataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.rating, rating) || other.rating == rating));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, description, address, image, rating);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WisataImplCopyWith<_$WisataImpl> get copyWith =>
      __$$WisataImplCopyWithImpl<_$WisataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WisataImplToJson(
      this,
    );
  }
}

abstract class _Wisata implements Wisata {
  const factory _Wisata(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "Name") required final String name,
      @JsonKey(name: "Description") required final String description,
      @JsonKey(name: "Address") required final String address,
      @JsonKey(name: "Image") required final String image,
      @JsonKey(name: "Rating") required final double rating}) = _$WisataImpl;

  factory _Wisata.fromJson(Map<String, dynamic> json) = _$WisataImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "Description")
  String get description;
  @override
  @JsonKey(name: "Address")
  String get address;
  @override
  @JsonKey(name: "Image")
  String get image;
  @override
  @JsonKey(name: "Rating")
  double get rating;
  @override
  @JsonKey(ignore: true)
  _$$WisataImplCopyWith<_$WisataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

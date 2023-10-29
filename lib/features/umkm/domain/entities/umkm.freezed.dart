// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'umkm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Umkm _$UmkmFromJson(Map<String, dynamic> json) {
  return _Umkm.fromJson(json);
}

/// @nodoc
mixin _$Umkm {
  @JsonKey(name: "ID")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Image")
  String get image => throw _privateConstructorUsedError;
  @JsonKey(name: "Name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "Description")
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: "Building")
  String get building => throw _privateConstructorUsedError;
  @JsonKey(name: "Address")
  String get address => throw _privateConstructorUsedError;
  @JsonKey(name: "List_product")
  List<ListProduct> get listProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UmkmCopyWith<Umkm> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UmkmCopyWith<$Res> {
  factory $UmkmCopyWith(Umkm value, $Res Function(Umkm) then) =
      _$UmkmCopyWithImpl<$Res, Umkm>;
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Building") String building,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "List_product") List<ListProduct> listProduct});
}

/// @nodoc
class _$UmkmCopyWithImpl<$Res, $Val extends Umkm>
    implements $UmkmCopyWith<$Res> {
  _$UmkmCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? building = null,
    Object? address = null,
    Object? listProduct = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value.listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ListProduct>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UmkmImplCopyWith<$Res> implements $UmkmCopyWith<$Res> {
  factory _$$UmkmImplCopyWith(
          _$UmkmImpl value, $Res Function(_$UmkmImpl) then) =
      __$$UmkmImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "ID") int id,
      @JsonKey(name: "Image") String image,
      @JsonKey(name: "Name") String name,
      @JsonKey(name: "Description") String description,
      @JsonKey(name: "Building") String building,
      @JsonKey(name: "Address") String address,
      @JsonKey(name: "List_product") List<ListProduct> listProduct});
}

/// @nodoc
class __$$UmkmImplCopyWithImpl<$Res>
    extends _$UmkmCopyWithImpl<$Res, _$UmkmImpl>
    implements _$$UmkmImplCopyWith<$Res> {
  __$$UmkmImplCopyWithImpl(_$UmkmImpl _value, $Res Function(_$UmkmImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? image = null,
    Object? name = null,
    Object? description = null,
    Object? building = null,
    Object? address = null,
    Object? listProduct = null,
  }) {
    return _then(_$UmkmImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      building: null == building
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      listProduct: null == listProduct
          ? _value._listProduct
          : listProduct // ignore: cast_nullable_to_non_nullable
              as List<ListProduct>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UmkmImpl implements _Umkm {
  const _$UmkmImpl(
      {@JsonKey(name: "ID") required this.id,
      @JsonKey(name: "Image") required this.image,
      @JsonKey(name: "Name") required this.name,
      @JsonKey(name: "Description") required this.description,
      @JsonKey(name: "Building") required this.building,
      @JsonKey(name: "Address") required this.address,
      @JsonKey(name: "List_product")
      required final List<ListProduct> listProduct})
      : _listProduct = listProduct;

  factory _$UmkmImpl.fromJson(Map<String, dynamic> json) =>
      _$$UmkmImplFromJson(json);

  @override
  @JsonKey(name: "ID")
  final int id;
  @override
  @JsonKey(name: "Image")
  final String image;
  @override
  @JsonKey(name: "Name")
  final String name;
  @override
  @JsonKey(name: "Description")
  final String description;
  @override
  @JsonKey(name: "Building")
  final String building;
  @override
  @JsonKey(name: "Address")
  final String address;
  final List<ListProduct> _listProduct;
  @override
  @JsonKey(name: "List_product")
  List<ListProduct> get listProduct {
    if (_listProduct is EqualUnmodifiableListView) return _listProduct;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listProduct);
  }

  @override
  String toString() {
    return 'Umkm(id: $id, image: $image, name: $name, description: $description, building: $building, address: $address, listProduct: $listProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UmkmImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.building, building) ||
                other.building == building) &&
            (identical(other.address, address) || other.address == address) &&
            const DeepCollectionEquality()
                .equals(other._listProduct, _listProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, image, name, description,
      building, address, const DeepCollectionEquality().hash(_listProduct));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UmkmImplCopyWith<_$UmkmImpl> get copyWith =>
      __$$UmkmImplCopyWithImpl<_$UmkmImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UmkmImplToJson(
      this,
    );
  }
}

abstract class _Umkm implements Umkm {
  const factory _Umkm(
      {@JsonKey(name: "ID") required final int id,
      @JsonKey(name: "Image") required final String image,
      @JsonKey(name: "Name") required final String name,
      @JsonKey(name: "Description") required final String description,
      @JsonKey(name: "Building") required final String building,
      @JsonKey(name: "Address") required final String address,
      @JsonKey(name: "List_product")
      required final List<ListProduct> listProduct}) = _$UmkmImpl;

  factory _Umkm.fromJson(Map<String, dynamic> json) = _$UmkmImpl.fromJson;

  @override
  @JsonKey(name: "ID")
  int get id;
  @override
  @JsonKey(name: "Image")
  String get image;
  @override
  @JsonKey(name: "Name")
  String get name;
  @override
  @JsonKey(name: "Description")
  String get description;
  @override
  @JsonKey(name: "Building")
  String get building;
  @override
  @JsonKey(name: "Address")
  String get address;
  @override
  @JsonKey(name: "List_product")
  List<ListProduct> get listProduct;
  @override
  @JsonKey(ignore: true)
  _$$UmkmImplCopyWith<_$UmkmImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ListProduct _$ListProductFromJson(Map<String, dynamic> json) {
  return _ListProduct.fromJson(json);
}

/// @nodoc
mixin _$ListProduct {
  @JsonKey(name: "Image_product")
  String get imageProduct => throw _privateConstructorUsedError;
  @JsonKey(name: "Name-product")
  String get nameProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListProductCopyWith<ListProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListProductCopyWith<$Res> {
  factory $ListProductCopyWith(
          ListProduct value, $Res Function(ListProduct) then) =
      _$ListProductCopyWithImpl<$Res, ListProduct>;
  @useResult
  $Res call(
      {@JsonKey(name: "Image_product") String imageProduct,
      @JsonKey(name: "Name-product") String nameProduct});
}

/// @nodoc
class _$ListProductCopyWithImpl<$Res, $Val extends ListProduct>
    implements $ListProductCopyWith<$Res> {
  _$ListProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageProduct = null,
    Object? nameProduct = null,
  }) {
    return _then(_value.copyWith(
      imageProduct: null == imageProduct
          ? _value.imageProduct
          : imageProduct // ignore: cast_nullable_to_non_nullable
              as String,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListProductImplCopyWith<$Res>
    implements $ListProductCopyWith<$Res> {
  factory _$$ListProductImplCopyWith(
          _$ListProductImpl value, $Res Function(_$ListProductImpl) then) =
      __$$ListProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "Image_product") String imageProduct,
      @JsonKey(name: "Name-product") String nameProduct});
}

/// @nodoc
class __$$ListProductImplCopyWithImpl<$Res>
    extends _$ListProductCopyWithImpl<$Res, _$ListProductImpl>
    implements _$$ListProductImplCopyWith<$Res> {
  __$$ListProductImplCopyWithImpl(
      _$ListProductImpl _value, $Res Function(_$ListProductImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageProduct = null,
    Object? nameProduct = null,
  }) {
    return _then(_$ListProductImpl(
      imageProduct: null == imageProduct
          ? _value.imageProduct
          : imageProduct // ignore: cast_nullable_to_non_nullable
              as String,
      nameProduct: null == nameProduct
          ? _value.nameProduct
          : nameProduct // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListProductImpl implements _ListProduct {
  const _$ListProductImpl(
      {@JsonKey(name: "Image_product") required this.imageProduct,
      @JsonKey(name: "Name-product") required this.nameProduct});

  factory _$ListProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListProductImplFromJson(json);

  @override
  @JsonKey(name: "Image_product")
  final String imageProduct;
  @override
  @JsonKey(name: "Name-product")
  final String nameProduct;

  @override
  String toString() {
    return 'ListProduct(imageProduct: $imageProduct, nameProduct: $nameProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListProductImpl &&
            (identical(other.imageProduct, imageProduct) ||
                other.imageProduct == imageProduct) &&
            (identical(other.nameProduct, nameProduct) ||
                other.nameProduct == nameProduct));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, imageProduct, nameProduct);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListProductImplCopyWith<_$ListProductImpl> get copyWith =>
      __$$ListProductImplCopyWithImpl<_$ListProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListProductImplToJson(
      this,
    );
  }
}

abstract class _ListProduct implements ListProduct {
  const factory _ListProduct(
          {@JsonKey(name: "Image_product") required final String imageProduct,
          @JsonKey(name: "Name-product") required final String nameProduct}) =
      _$ListProductImpl;

  factory _ListProduct.fromJson(Map<String, dynamic> json) =
      _$ListProductImpl.fromJson;

  @override
  @JsonKey(name: "Image_product")
  String get imageProduct;
  @override
  @JsonKey(name: "Name-product")
  String get nameProduct;
  @override
  @JsonKey(ignore: true)
  _$$ListProductImplCopyWith<_$ListProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

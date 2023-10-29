// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'umkm.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UmkmImpl _$$UmkmImplFromJson(Map<String, dynamic> json) => _$UmkmImpl(
      id: json['ID'] as int,
      image: json['Image'] as String,
      name: json['Name'] as String,
      description: json['Description'] as String,
      building: json['Building'] as String,
      address: json['Address'] as String,
      listProduct: (json['List_product'] as List<dynamic>)
          .map((e) => ListProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UmkmImplToJson(_$UmkmImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Image': instance.image,
      'Name': instance.name,
      'Description': instance.description,
      'Building': instance.building,
      'Address': instance.address,
      'List_product': instance.listProduct,
    };

_$ListProductImpl _$$ListProductImplFromJson(Map<String, dynamic> json) =>
    _$ListProductImpl(
      imageProduct: json['Image_product'] as String,
      nameProduct: json['Name-product'] as String,
    );

Map<String, dynamic> _$$ListProductImplToJson(_$ListProductImpl instance) =>
    <String, dynamic>{
      'Image_product': instance.imageProduct,
      'Name-product': instance.nameProduct,
    };

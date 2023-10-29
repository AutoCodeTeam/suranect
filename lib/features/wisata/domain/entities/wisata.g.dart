// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wisata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WisataImpl _$$WisataImplFromJson(Map<String, dynamic> json) => _$WisataImpl(
      id: json['ID'] as int,
      name: json['Name'] as String,
      description: json['Description'] as String,
      address: json['Address'] as String,
      image: json['Image'] as String,
      rating: (json['Rating'] as num).toDouble(),
    );

Map<String, dynamic> _$$WisataImplToJson(_$WisataImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Name': instance.name,
      'Description': instance.description,
      'Address': instance.address,
      'Image': instance.image,
      'Rating': instance.rating,
    };

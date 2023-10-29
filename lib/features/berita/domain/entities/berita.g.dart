// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berita.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeritaImpl _$$BeritaImplFromJson(Map<String, dynamic> json) => _$BeritaImpl(
      id: json['ID'] as int,
      title: json['Title'] as String,
      text: json['Text'] as String,
      image: json['Image'] as String,
      category: json['Category'] as String,
      createdAt: json['CreatedAt'] as String?,
      updatedAt: json['UpdatedAt'] as String?,
    );

Map<String, dynamic> _$$BeritaImplToJson(_$BeritaImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Title': instance.title,
      'Text': instance.text,
      'Image': instance.image,
      'Category': instance.category,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
    };

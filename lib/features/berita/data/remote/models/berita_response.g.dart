// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'berita_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BeritResponseImpl _$$BeritResponseImplFromJson(Map<String, dynamic> json) =>
    _$BeritResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => Berita.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BeritResponseImplToJson(_$BeritResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

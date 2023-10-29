// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'umkm_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UmkmResponseImpl _$$UmkmResponseImplFromJson(Map<String, dynamic> json) =>
    _$UmkmResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => Umkm.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UmkmResponseImplToJson(_$UmkmResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

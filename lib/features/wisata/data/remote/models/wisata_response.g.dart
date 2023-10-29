// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wisata_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WisataResponseImpl _$$WisataResponseImplFromJson(Map<String, dynamic> json) =>
    _$WisataResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => Wisata.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WisataResponseImplToJson(
        _$WisataResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

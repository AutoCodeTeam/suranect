// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventResponseImpl _$$EventResponseImplFromJson(Map<String, dynamic> json) =>
    _$EventResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => Event.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$EventResponseImplToJson(_$EventResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

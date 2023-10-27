// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pajak_pbb_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PajakPbbResponseImpl _$$PajakPbbResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PajakPbbResponseImpl(
      data: (json['Data'] as List<dynamic>)
          .map((e) => PajakPBB.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$$PajakPbbResponseImplToJson(
        _$PajakPbbResponseImpl instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
      'Status': instance.status,
    };

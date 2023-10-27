// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pajak_kendaraan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PajakKendaraanResponseImpl _$$PajakKendaraanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$PajakKendaraanResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => PajakKendaraan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PajakKendaraanResponseImplToJson(
        _$PajakKendaraanResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

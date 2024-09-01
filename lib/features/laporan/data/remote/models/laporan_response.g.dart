// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporan_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaporanResponseImpl _$$LaporanResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LaporanResponseImpl(
      data: (json['Data'] as List<dynamic>)
          .map((e) => Laporan.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['Message'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$$LaporanResponseImplToJson(
        _$LaporanResponseImpl instance) =>
    <String, dynamic>{
      'Data': instance.data,
      'Message': instance.message,
      'Status': instance.status,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peta_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetaResponseImpl _$$PetaResponseImplFromJson(Map<String, dynamic> json) =>
    _$PetaResponseImpl(
      message: json['Message'] as String,
      status: json['Status'] as String,
      data: (json['Data'] as List<dynamic>)
          .map((e) => Peta.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PetaResponseImplToJson(_$PetaResponseImpl instance) =>
    <String, dynamic>{
      'Message': instance.message,
      'Status': instance.status,
      'Data': instance.data,
    };

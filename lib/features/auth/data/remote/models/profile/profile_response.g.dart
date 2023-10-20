// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileResponseImpl _$$ProfileResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileResponseImpl(
      userEntity: UserEntity.fromJson(json['Data'] as Map<String, dynamic>),
      message: json['Message'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$$ProfileResponseImplToJson(
        _$ProfileResponseImpl instance) =>
    <String, dynamic>{
      'Data': instance.userEntity,
      'Message': instance.message,
      'Status': instance.status,
    };

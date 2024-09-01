// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserEntityImpl _$$UserEntityImplFromJson(Map<String, dynamic> json) =>
    _$UserEntityImpl(
      id: json['ID'] as int,
      createdAt: json['CreatedAt'] as String,
      updatedAt: json['UpdatedAt'] as String,
      deletedAt: json['DeletedAt'] as String?,
      name: json['Name'] as String,
      username: json['Username'] as String,
      password: json['Password'] as String,
      photo: json['Photo'] as String,
      email: json['Email'] as String,
      emailVerify: json['EmailVerify'] as bool,
      emailCode: json['EmailCode'] as int,
      laporans: (json['Laporans'] as List<dynamic>?)
          ?.map((e) => Laporan.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserEntityImplToJson(_$UserEntityImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
      'DeletedAt': instance.deletedAt,
      'Name': instance.name,
      'Username': instance.username,
      'Password': instance.password,
      'Photo': instance.photo,
      'Email': instance.email,
      'EmailVerify': instance.emailVerify,
      'EmailCode': instance.emailCode,
      'Laporans': instance.laporans,
    };

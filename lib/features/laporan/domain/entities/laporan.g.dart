// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'laporan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LaporanImpl _$$LaporanImplFromJson(Map<String, dynamic> json) =>
    _$LaporanImpl(
      id: json['ID'] as int,
      createdAt: DateTime.parse(json['CreatedAt'] as String),
      updatedAt: DateTime.parse(json['UpdatedAt'] as String),
      deletedAt: json['DeletedAt'],
      userId: json['UserID'] as int,
      user: UserEntity.fromJson(json['User'] as Map<String, dynamic>),
      lokasi: json['Lokasi'] as String,
      lokasiSpesifik: json['LokasiSpesifik'] as String,
      permasalahan: json['Permasalahan'] as String,
      kategori: json['Kategori'] as String,
      photo: json['Photo'] as String,
      status: json['Status'] as String,
    );

Map<String, dynamic> _$$LaporanImplToJson(_$LaporanImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'CreatedAt': instance.createdAt.toIso8601String(),
      'UpdatedAt': instance.updatedAt.toIso8601String(),
      'DeletedAt': instance.deletedAt,
      'UserID': instance.userId,
      'User': instance.user,
      'Lokasi': instance.lokasi,
      'LokasiSpesifik': instance.lokasiSpesifik,
      'Permasalahan': instance.permasalahan,
      'Kategori': instance.kategori,
      'Photo': instance.photo,
      'Status': instance.status,
    };

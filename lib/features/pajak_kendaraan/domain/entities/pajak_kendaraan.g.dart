// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pajak_kendaraan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PajakKendaraanImpl _$$PajakKendaraanImplFromJson(Map<String, dynamic> json) =>
    _$PajakKendaraanImpl(
      id: json['ID'] as int,
      identitasKendaraan: IdentitasKendaraan.fromJson(
          json['Identitas_kendaraan'] as Map<String, dynamic>),
      penulTahunan:
          PenulTahunan.fromJson(json['Penul_tahunan'] as Map<String, dynamic>),
      penul5Tahunan: Penul5Tahunan.fromJson(
          json['Penul_5_tahunan'] as Map<String, dynamic>),
      updatedAt: json['UpdatedAt'] as String,
      createdAt: json['CreatedAt'] as String,
    );

Map<String, dynamic> _$$PajakKendaraanImplToJson(
        _$PajakKendaraanImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Identitas_kendaraan': instance.identitasKendaraan,
      'Penul_tahunan': instance.penulTahunan,
      'Penul_5_tahunan': instance.penul5Tahunan,
      'UpdatedAt': instance.updatedAt,
      'CreatedAt': instance.createdAt,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identitas_kendaraan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IdentitasKendaraanImpl _$$IdentitasKendaraanImplFromJson(
        Map<String, dynamic> json) =>
    _$IdentitasKendaraanImpl(
      nopol: json['Nopol'] as String,
      warna: json['Warna'] as String,
      merek: json['Merek'] as String,
      model: json['Model'] as String,
      tipe: json['Tipe'] as String,
      tahunPembuatan: json['Tahun_pembuatan'] as String,
      masaBerlaku: json['Masa_berlaku'] as String,
    );

Map<String, dynamic> _$$IdentitasKendaraanImplToJson(
        _$IdentitasKendaraanImpl instance) =>
    <String, dynamic>{
      'Nopol': instance.nopol,
      'Warna': instance.warna,
      'Merek': instance.merek,
      'Model': instance.model,
      'Tipe': instance.tipe,
      'Tahun_pembuatan': instance.tahunPembuatan,
      'Masa_berlaku': instance.masaBerlaku,
    };

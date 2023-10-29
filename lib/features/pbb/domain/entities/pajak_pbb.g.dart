// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pajak_pbb.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PajakPBBImpl _$$PajakPBBImplFromJson(Map<String, dynamic> json) =>
    _$PajakPBBImpl(
      id: json['ID'] as int?,
      nop: json['Nop'] as String?,
      letakObjekPajak: json['Letak_objek_pajak'] == null
          ? null
          : LetakObjekPajak.fromJson(
              json['Letak_objek_pajak'] as Map<String, dynamic>),
      alamatWajibPajak: json['Alamat_wajib_pajak'] == null
          ? null
          : AlamatWajibPajak.fromJson(
              json['Alamat_wajib_pajak'] as Map<String, dynamic>),
      njopPbbP2: json['Njop_pbb_p2'] as int?,
      njoptkp: json['Njoptkp'] as int?,
      njop: json['Njop'] as int?,
      njkp: json['Njkp'] as String?,
      pbbYangTerhutang: json['Pbb_yang_terhutang'] as String?,
      jatuhTempo: json['Jatuh_Tempo'] as String?,
      tempatPembayaran: json['Tempat_pembayaran'] as String?,
      createdAt: json['CreatedAt'] as String?,
      updatedAt: json['UpdatedAt'] as String?,
    );

Map<String, dynamic> _$$PajakPBBImplToJson(_$PajakPBBImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Nop': instance.nop,
      'Letak_objek_pajak': instance.letakObjekPajak,
      'Alamat_wajib_pajak': instance.alamatWajibPajak,
      'Njop_pbb_p2': instance.njopPbbP2,
      'Njoptkp': instance.njoptkp,
      'Njop': instance.njop,
      'Njkp': instance.njkp,
      'Pbb_yang_terhutang': instance.pbbYangTerhutang,
      'Jatuh_Tempo': instance.jatuhTempo,
      'Tempat_pembayaran': instance.tempatPembayaran,
      'CreatedAt': instance.createdAt,
      'UpdatedAt': instance.updatedAt,
    };

_$AlamatWajibPajakImpl _$$AlamatWajibPajakImplFromJson(
        Map<String, dynamic> json) =>
    _$AlamatWajibPajakImpl(
      atasNama: json['Atas_nama'] as String?,
      alamat: json['Alamat'] as String?,
      rt: json['RT'] as String?,
      rw: json['RW'] as String?,
      kelurahan: json['Kelurahan'] as String?,
      kota: json['Kota'] as String?,
    );

Map<String, dynamic> _$$AlamatWajibPajakImplToJson(
        _$AlamatWajibPajakImpl instance) =>
    <String, dynamic>{
      'Atas_nama': instance.atasNama,
      'Alamat': instance.alamat,
      'RT': instance.rt,
      'RW': instance.rw,
      'Kelurahan': instance.kelurahan,
      'Kota': instance.kota,
    };

_$LetakObjekPajakImpl _$$LetakObjekPajakImplFromJson(
        Map<String, dynamic> json) =>
    _$LetakObjekPajakImpl(
      alamat: json['Alamat'] as String?,
      rt: json['RT'] as String?,
      rw: json['RW'] as String?,
      kelurahan: json['Kelurahan'] as String?,
      kecamatan: json['Kecamatan'] as String?,
      kota: json['Kota'] as String?,
    );

Map<String, dynamic> _$$LetakObjekPajakImplToJson(
        _$LetakObjekPajakImpl instance) =>
    <String, dynamic>{
      'Alamat': instance.alamat,
      'RT': instance.rt,
      'RW': instance.rw,
      'Kelurahan': instance.kelurahan,
      'Kecamatan': instance.kecamatan,
      'Kota': instance.kota,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'peta.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PetaImpl _$$PetaImplFromJson(Map<String, dynamic> json) => _$PetaImpl(
      id: json['ID'] as int,
      title: json['title'] as String,
      description: json['Description'] as String,
      address: json['Address'] as String,
      detailLocation: json['Detail_location'] as String,
      time: json['Time'] as String,
      position: (json['Position'] as List<dynamic>)
          .map((e) => Position.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$PetaImplToJson(_$PetaImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'title': instance.title,
      'Description': instance.description,
      'Address': instance.address,
      'Detail_location': instance.detailLocation,
      'Time': instance.time,
      'Position': instance.position,
    };

_$PositionImpl _$$PositionImplFromJson(Map<String, dynamic> json) =>
    _$PositionImpl(
      lon: (json['Lon'] as num).toDouble(),
      lat: (json['Lat'] as num).toDouble(),
    );

Map<String, dynamic> _$$PositionImplToJson(_$PositionImpl instance) =>
    <String, dynamic>{
      'Lon': instance.lon,
      'Lat': instance.lat,
    };

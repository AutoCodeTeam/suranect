// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventImpl _$$EventImplFromJson(Map<String, dynamic> json) => _$EventImpl(
      id: json['ID'] as int,
      title: json['Title'] as String,
      description: json['Description'] as String,
      openness: json['Openness'] as String,
      building: json['Building'] as String,
      address: json['Address'] as String,
      date: json['Date'] as String,
      time: json['Time'] as String,
      poster: json['Poster'] as String,
      linkRegistrasion: json['Link_registrasion'] as String,
      position: Position.fromJson(json['Position'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventImplToJson(_$EventImpl instance) =>
    <String, dynamic>{
      'ID': instance.id,
      'Title': instance.title,
      'Description': instance.description,
      'Openness': instance.openness,
      'Building': instance.building,
      'Address': instance.address,
      'Date': instance.date,
      'Time': instance.time,
      'Poster': instance.poster,
      'Link_registrasion': instance.linkRegistrasion,
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

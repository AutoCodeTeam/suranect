// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_auth.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TokenAuthAdapter extends TypeAdapter<TokenAuth> {
  @override
  final int typeId = 1;

  @override
  TokenAuth read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TokenAuth(
      token: fields[0] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TokenAuth obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.token);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TokenAuthAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenAuthImpl _$$TokenAuthImplFromJson(Map<String, dynamic> json) =>
    _$TokenAuthImpl(
      token: json['token'] as String,
    );

Map<String, dynamic> _$$TokenAuthImplToJson(_$TokenAuthImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
    };

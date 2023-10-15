// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'intro.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class IntroAdapter extends TypeAdapter<Intro> {
  @override
  final int typeId = 0;

  @override
  Intro read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Intro(
      isIntro: fields[0] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, Intro obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.isIntro);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is IntroAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

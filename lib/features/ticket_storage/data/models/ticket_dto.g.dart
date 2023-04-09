// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_dto.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketDtoAdapter extends TypeAdapter<TicketDto> {
  @override
  final int typeId = 0;

  @override
  TicketDto read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TicketDto(
      name: fields[0] as String,
      url: fields[1] as String,
      state: fields[2] as TicketState,
      timeAdded: fields[3] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TicketDto obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.url)
      ..writeByte(2)
      ..write(obj.state)
      ..writeByte(3)
      ..write(obj.timeAdded);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketDtoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_file.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketFileAdapter extends TypeAdapter<TicketFile> {
  @override
  final int typeId = 0;

  @override
  TicketFile read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TicketFile(
      name: fields[0] as String,
      filePath: fields[1] as String,
      receivedBytes: fields[2] as int,
      totalBytes: fields[3] as int,
      datetime: fields[4] as DateTime,
    );
  }

  @override
  void write(BinaryWriter writer, TicketFile obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.filePath)
      ..writeByte(2)
      ..write(obj.receivedBytes)
      ..writeByte(3)
      ..write(obj.totalBytes)
      ..writeByte(4)
      ..write(obj.datetime);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketFileAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

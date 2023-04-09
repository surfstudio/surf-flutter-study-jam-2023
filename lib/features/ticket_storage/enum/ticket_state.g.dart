// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ticket_state.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TicketStateAdapter extends TypeAdapter<TicketState> {
  @override
  final int typeId = 1;

  @override
  TicketState read(BinaryReader reader) {
    switch (reader.readByte()) {
      case 0:
        return TicketState.notLoaded;
      case 1:
        return TicketState.loading;
      case 2:
        return TicketState.paused;
      case 3:
        return TicketState.loaded;
      default:
        return TicketState.notLoaded;
    }
  }

  @override
  void write(BinaryWriter writer, TicketState obj) {
    switch (obj) {
      case TicketState.notLoaded:
        writer.writeByte(0);
        break;
      case TicketState.loading:
        writer.writeByte(1);
        break;
      case TicketState.paused:
        writer.writeByte(2);
        break;
      case TicketState.loaded:
        writer.writeByte(3);
        break;
    }
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TicketStateAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

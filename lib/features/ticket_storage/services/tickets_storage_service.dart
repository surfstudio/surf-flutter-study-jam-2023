import 'dart:typed_data';
import 'package:hive/hive.dart';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';

import '../data/models/ticket_dto.dart';
import '../data/services/tickets_storage_service_abstract.dart';

class TicketsStorageService implements TicketsStorageServiceAbstract {
  static const String _ticketsBoxName = 'ticketsBox';

  Future<Box<TicketDto>> get _ticketsBox async =>
      await Hive.openBox<TicketDto>(_ticketsBoxName);

  @override
  Future<List<TicketDto>> loadTickets() async {
    try {
      final box = await _ticketsBox;
      return box.values.toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<bool> saveTickets({required List<TicketDto> tickets}) async {
    try {
      final box = await _ticketsBox;
      box.addAll(tickets);
      return true;
    } catch (_) {
      return false;
    }
  }
}

import 'package:hive/hive.dart';

import '../data/models/ticket_dto.dart';
import '../data/services/tickets_storage_service_abstract.dart';

class TicketsStorageService implements TicketsStorageServiceAbstract {
  static const String _ticketsBoxName = 'ticketsBox';

  Future<Box<TicketDto>> get _ticketsBox async =>
      await Hive.openBox<TicketDto>(_ticketsBoxName);

  String _boxKey(String url, String key) => url + key;

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
      box.clear();
      for (var ticket in tickets) {
        box.put(_boxKey(ticket.url, ticket.key), ticket);
      }
      return true;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> deleteTicket({required String url, required String key}) async {
    try {
      final box = await _ticketsBox;
      box.delete(_boxKey(url, key));
      // final k = box.keys.toList();
      // final key = _boxKey(url, key);
      return true;
    } catch (_) {
      return false;
    }
  }
}

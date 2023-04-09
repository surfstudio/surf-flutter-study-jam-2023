import '../models/ticket_dto.dart';

abstract class TicketsStorageServiceAbstract {
  Future<bool> saveTickets({required List<TicketDto> tickets});

  Future<List<TicketDto>> loadTickets();

  Future<bool> deleteTicket({required String url, required String key});
}

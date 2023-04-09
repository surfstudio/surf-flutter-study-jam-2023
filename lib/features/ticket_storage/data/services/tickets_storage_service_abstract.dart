import '../../domain/entities/ticket.dart';
import '../models/ticket_dto.dart';

abstract class TicketsStorageServiceAbstract {
  Future<bool> saveTickets({required List<TicketDto> tickets});

  Future<List<TicketDto>> loadTickets();
}

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/i_ticket_repository.dart';

/// Халтурная реализация репозитория для хранения билетов.
///
/// Хранит список билетов в оперативной памяти.
class FakeTicketRepository implements ITicketRepository {
  final List<TicketEntity> _tickets = [];

  @override
  Iterable<TicketEntity> get tickets => _tickets;

  @override
  Future<void> addNewTicket(TicketEntity ticket) async {
    _tickets.add(ticket);
  }
}

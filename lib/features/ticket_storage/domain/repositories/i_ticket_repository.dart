import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entityes/ticket_entity.dart';

/// Интерфейс репозитория для хранения билетов.
abstract class ITicketRepository {
  /// Список сохранённых билетов.
  Iterable<TicketEntity> get tickets;

  /// Добавить новый билет в список.
  Future<void> addNewTicket(TicketEntity ticket);
}

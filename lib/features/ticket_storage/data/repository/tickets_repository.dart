import 'dart:typed_data';

import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/models/ticket_dto.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/services/tickets_storage_service_abstract.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository_abstract.dart';

class TicketsRepository implements TicketsRepositoryAbstract {
  final TicketsStorageServiceAbstract ticketsStorageService;
  TicketsRepository({required this.ticketsStorageService});
  @override
  Future<bool> downloadDocuments({required List<String> urls}) {
    // TODO: implement downloadDocument
    throw UnimplementedError();
  }

  @override
  Future<Uint8List> loadDocument() {
    // TODO: implement loadDocument
    throw UnimplementedError();
  }

  @override
  Future<List<Ticket>> loadTicketsList() async {
    try {
      final ticketsDto = await ticketsStorageService.loadTickets();
      return ticketsDto
          .map(
            (e) => Ticket(
              name: e.name,
              url: e.url,
              state: e.state,
              timeAdded: e.timeAdded,
            ),
          )
          .toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Future<bool> saveTicketsList({required List<Ticket> tickets}) async {
    try {
      final ticketsDto = tickets
          .map(
            (e) => TicketDto(
              name: e.name,
              url: e.url,
              state: e.state,
              timeAdded: e.timeAdded,
            ),
          )
          .toList();
      return await ticketsStorageService.saveTickets(tickets: ticketsDto);
    } catch (_) {
      return false;
    }
  }
}

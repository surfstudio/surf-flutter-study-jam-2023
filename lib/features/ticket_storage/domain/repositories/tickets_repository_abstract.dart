import 'dart:typed_data';

import '../entities/ticket.dart';

abstract class TicketsRepositoryAbstract {
  Future<bool> saveTicketsList({required List<Ticket> tickets});

  Future<List<Ticket>> loadTicketsList();

  Future<bool> downloadDocuments({required List<String> urls});

  Future<Uint8List> loadDocument();
}

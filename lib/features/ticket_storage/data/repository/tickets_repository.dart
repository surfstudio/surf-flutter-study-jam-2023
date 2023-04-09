import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/models/ticket_dto.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/data/services/tickets_storage_service_abstract.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/entities/ticket.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/repositories/tickets_repository_abstract.dart';
import 'package:uuid/uuid.dart';

import '../services/documents_storage_service_abstract.dart';
import '../services/download_service_abstract.dart';

class TicketsRepository implements TicketsRepositoryAbstract {
  final TicketsStorageServiceAbstract ticketsStorageService;
  final DownloadServiceAbstract downloadStorageService;
  final DocumentsStorageServiceAbstract documentsStorageService;
  TicketsRepository({
    required this.ticketsStorageService,
    required this.downloadStorageService,
    required this.documentsStorageService,
  });
  Future<String> _getPathToFile(String name) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    return directory + name;
  }

  @override
  Future<bool> downloadDocument({
    required Ticket ticket,
    void Function(int, int)? onReceiveProgress,
    required CancelToken cancelToken,
  }) async {
    try {
      final result = await downloadStorageService.downloadPdf(
        url: ticket.url,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );
      if (result.isNotEmpty) {
        final filePath = await _getPathToFile(ticket.name);
        await File(filePath).writeAsBytes(result);
        return await documentsStorageService.savePathToDocument(
          url: ticket.url,
          path: filePath,
        );
      }
      return false;
    } catch (_) {
      return false;
    }
  }

  @override
  Future<List<Ticket>> loadTicketsList() async {
    try {
      final ticketsDto = await ticketsStorageService.loadTickets();
      return ticketsDto
          .map(
            (e) => Ticket(
              key: e.key,
              name: e.name,
              url: e.url,
              state: e.state,
              timeAdded: e.timeAdded,
              loadingProgress: LoadingProgress.initial(),
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
                key: e.key),
          )
          .toList();
      return await ticketsStorageService.saveTickets(tickets: ticketsDto);
    } catch (_) {
      return false;
    }
  }

  @override
  Future<bool> deleteTicket({required Ticket ticket}) async {
    try {
      final path = await documentsStorageService.getPathToDocument(
        key: ticket.url,
      );
      if (path?.isNotEmpty ?? false) {
        final file = File(path!);
        await file.delete();
      }
      return true;
      // return await ticketsStorageService.deleteTicket(
      //   url: ticket.url,
      //   key: ticket.key,
      // );
    } catch (_) {
      return false;
    }
  }
}

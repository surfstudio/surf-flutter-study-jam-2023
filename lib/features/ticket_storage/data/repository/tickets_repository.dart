import 'dart:io';
import 'dart:typed_data';

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
  Future<String> _getPathToFile(String url) async {
    final directory = (await getApplicationDocumentsDirectory()).path;
    return directory + url.split('/').last;
  }

  @override
  Future<bool> downloadDocument({
    required String url,
    void Function(int, int)? onReceiveProgress,
    required CancelToken cancelToken,
  }) async {
    try {
      final result = await downloadStorageService.downloadPdf(
        url: url,
        onReceiveProgress: onReceiveProgress,
        cancelToken: cancelToken,
      );
      if (result.isNotEmpty) {
        final filePath = await _getPathToFile(url);
        await File(filePath).writeAsBytes(result);
        return await documentsStorageService.savePathToDocument(
          key: url,
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
              key: const Uuid().v4(),
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
            ),
          )
          .toList();
      return await ticketsStorageService.saveTickets(tickets: ticketsDto);
    } catch (_) {
      return false;
    }
  }
}

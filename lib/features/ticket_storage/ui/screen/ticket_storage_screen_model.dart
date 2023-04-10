import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/repository.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket_failure.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/uploading_file/model.dart';

class TicketStorageScreenModel extends ChangeNotifier {
  final TicketsRepository _repository;

  TicketsData tickets;
  BuiltList<UploadingTicketFile> uploadingTicketFiles;

  TicketStorageScreenModel({
    required TicketsRepository repository,
    required this.tickets,
    required this.uploadingTicketFiles,
  }) : _repository = repository;

  factory TicketStorageScreenModel.init(TicketsRepository repository) {
    return TicketStorageScreenModel(
      repository: repository,
      tickets: TicketsData.init(),
      uploadingTicketFiles: BuiltList(<UploadingTicketFile>[]),
    );
  }

  void loadTickets() {
    tickets = TicketsData.loading();

    _repository.getAll().then((data) {
      tickets = TicketsData.loaded(data);

      notifyListeners();
    });

    notifyListeners();
  }

  void addTicket(TicketModel ticket) {
    _repository.save(ticket);
    tickets = tickets.data.fold(
      (l) => tickets.update([ticket].toBuiltList()),
      (r) => tickets.update(r.rebuild((b) => b.insert(0, ticket))),
    );

    notifyListeners();
  }

  void saveTicket(TicketModel ticket) {
    _repository.save(ticket);

    tickets = tickets.data.fold(
      (l) => tickets.update([ticket].toBuiltList()),
      (r) => tickets.update(r.rebuild(
        (b) => b
          ..removeWhere((t) => t.id == ticket.id)
          ..insert(0, ticket),
      )),
    );

    notifyListeners();
  }

  void deleteTicket(TicketModel ticket) {
    _repository.delete(ticket);

    tickets = tickets.data.fold(
      (l) => TicketsData.init(),
      (r) => tickets.update(
        r.rebuild((b) => b.removeWhere((t) => t.id == ticket.id)),
      ),
    );

    notifyListeners();
  }

  void uploadTicketFile(TicketModel ticket) {
    final token = CancelToken();
    final file = UploadingTicketFile(
      ticket: ticket,
      cancelToken: token,
    );
    uploadingTicketFiles.rebuild((b) => b.add(file));

    _repository.uploadFile(
      file,
      (nextFile) {
        uploadingTicketFiles.rebuild(
          (b) => b.remove(file),
        );
      },
    );

    notifyListeners();
  }

  void _updateTickets(TicketModel ticket) {
    tickets = tickets.data.fold(
      (l) => tickets.update([ticket].toBuiltList()),
      (r) {
        final index = r.indexWhere((t) => t.id == ticket.id);

        return tickets.update(r.rebuild(
          (b) {
            b
              ..removeWhere((t) => t.id == ticket.id)
              ..replaceRange(index, index + 1, [ticket]);
          },
        ));
      },
    );
  }
}

class TicketsData {
  final bool loading;
  final bool loaded;
  final Either<TicketFailure, BuiltList<TicketModel>> data;

  const TicketsData({
    required this.data,
    required this.loading,
    required this.loaded,
  });

  factory TicketsData.init() {
    return TicketsData(
      data: right(BuiltList(<TicketModel>[])),
      loading: false,
      loaded: false,
    );
  }

  factory TicketsData.loading() {
    return TicketsData(
      data: right(BuiltList(<TicketModel>[])),
      loading: true,
      loaded: false,
    );
  }

  factory TicketsData.loaded(
      Either<TicketFailure, BuiltList<TicketModel>> data) {
    return TicketsData(
      data: data,
      loading: false,
      loaded: true,
    );
  }

  TicketsData update(BuiltList<TicketModel> data) {
    return TicketsData(
      data: right(data),
      loading: false,
      loaded: true,
    );
  }
}

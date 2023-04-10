import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:surf_flutter_study_jam_2023/data/database.dart';
import 'package:surf_flutter_study_jam_2023/data/tickets_converter.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket/model.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/ticket_failure.dart';
import 'package:surf_flutter_study_jam_2023/features/ticket_storage/domain/tickets/uploading_file/model.dart';
import 'package:uuid/uuid.dart';

class TicketsRepository {
  final AppDb _db;
  final Dio _dio;
  final TicketModelPersistenceModelConverter _converter;

  const TicketsRepository(
    this._db,
    this._converter,
    this._dio,
  );

  Future<void> uploadFile(
    UploadingTicketFile file,
    void Function(UploadingTicketFile file) update,
  ) async {

    final appDirectory = await getApplicationDocumentsDirectory();
    final savePath = '${appDirectory.path}/${const Uuid().v4()}.pdf';

    file.ticket.status.maybeWhen(
        readyToLoadFile: (url) {
          _dio.download(
            url.getOrCrash(),
            savePath,
            onReceiveProgress: (receivedBytes, totalBytes) {
              if (file.cancelToken.isCancelled) {
                // todo uploading status pause

                update(file);
              } else {
                // todo uploading status progress
                // print('Received: ${receivedBytes ~/ 1024} KB, Total: ${totalBytes ~/ 1024} KB');

                update(file);
              }
            },
            cancelToken: file.cancelToken,
          );
        },
        orElse: () {

        },
    );
  }

  Future<Either<TicketFailure, BuiltList<TicketModel>>> getAll() async {
    try {
      final persistenceModels = await (_db.select(_db.ticketsTable)
            ..orderBy([
              (place) => OrderingTerm(
                    expression: place.dateCreated,
                    mode: OrderingMode.desc,
                  ),
            ]))
          .get();

      final converter = TicketModelPersistenceModelConverter();

      return right(
        persistenceModels.map(converter.toDomainModel).toBuiltList(),
      );
    } on Exception {
      return left(const TicketFailure.unexpected());
    }
  }

  Future<Either<TicketFailure, TicketModel>> save(TicketModel ticket) async {
    try {
      await _db.into(_db.ticketsTable).insertOnConflictUpdate(
            _converter.toPersistenceModel(ticket),
          );

      return right(ticket);
    } on Exception {
      return left(const TicketFailure.unexpected());
    }
  }

  Future<Either<TicketFailure, Unit>> delete(TicketModel ticket) async {
    try {
      await (_db.delete(_db.ticketsTable)
            ..where(
              (t) => t.id.equals(ticket.id.getOrCrash()),
            ))
          .go();

      return right(unit);
    } on Exception {
      return left(const TicketFailure.unexpected());
    }
  }
}
